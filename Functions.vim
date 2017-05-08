" Functions:
let g:functions = []

let l = ['PopulateReadme', "Gets all Plugins, Functions, and Leader Maps and places them inside the README file."] " {{{
:call add(g:functions, l)
function! PopulateReadme()
    vs $HOME/vimrc/README.md
    /Plugins
    normal! 2j0d}k
    let line = []
    for plug in g:plugins
        let p = split(plug[0], '/')
        call add(line, ' * [' . p[1] . '](https://github.com/' . plug[0] . ')')
    endfor
    call sort(line)
    silent! put=line
    /Functions
    normal! 2j0d}k
    let line = []
    for p in g:functions
        call add(line, ' * `' . p[0] . '()` ' . p[1])
    endfor
    call sort(line)
    silent! put=line
    /Key Mapping
    normal! 2j0d3}k
    vs $HOME/vimrc/KeyMapping.vim
    normal! }jv}k"byZQ
    let lines = split(@b, '\n')
    let line = []
    for l in lines
        if l[0] == '"'
            if len(l[2:-5]) >  0
                call add(line, l[2:-5])
            else
                call add(line, '')
            endif
        else
            let s = split(l, "| ")
            let mapping = split(s[0], " ")
            let ll = ' * `' . join(mapping[0:1], ' ') . '` ' . s[1][2:]
            call add(line, ll)
        endif
    endfor
    silent! put=line[:-3]
    /Leader Mapping
    normal! 2j0d}k
    let line = []
    for p in g:leader
        call add(line, ' * `' . p[0] . '` ' . p[1])
    endfor
    call sort(line)
    silent! put=line
    normal! ZZ
endfunction
" }}}"
let l = ['Col80', "Fires a vertical line if cursor reaches over the 80th column."] " {{{
:call add(g:functions, l)
function! Col80()
    if virtcol('.') >= 80
        exec 'set colorcolumn=80'
    else
        exec 'set colorcolumn&'
    endif
endfunction
" }}}
let l = ['Base64Decode', "Decodes a Base64 String and pastes result."] " {{{
:call add(g:functions, l)
function! Base64Decode()
    let text = Concatonate()
    normal! F(hb
    let save_pos = getpos('.')
    let text = strpart(text, 1, (strlen(text) - 2))
    let f_name = GetFunctionName()
    if f_name == 'base64_decode'
        let decoded = system('base64 --decode', text)
        normal! df)
        call setpos('.', save_pos)
        normal! P
    endif
endfunction
" }}}
let l = ['Concatonate', "Concatonates inside parentheses and pastes result."] " {{{
:call add(g:functions, l)
function! Concatonate()
    let save_pos = getpos('.')
    normal! di(
    let text = @
    " Should concatonate any strings with the "." delimiter
    let text = substitute(text, "[\"|'] *\\. *[\"|']", "", "g")
    let @" = text
    call setpos('.', save_pos)
    normal! P
    return text
endfunction
" }}}
let l = ['GetFunctionName', "Prints word before the '(' in buffer."] " {{{
:call add(g:functions, l)
function! GetFunctionName()
    normal! F(hyiw
    let function = @
    return function
endfunction
" }}}
let l = ['ExecuteMacroOverVisualRange', "Don't remember what this does..."] " {{{
:call add(g:functions, l)
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" Got this so it executes macro while in visual mode
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
" }}}
let l = ['HandleURL', "Opens URL/URI"] " {{{
:call add(g:functions, l)
function! HandleURL()
    let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
    echo s:uri
    if s:uri != ""
        exec "!gnome-open '".s:uri."'"
    else
        echo "No URI found in line."
    endif
endfunction
" }}}
let l = ['Install', "Upgrades Plug Install, Does Plug Install, Populate Readme"] " {{{
:call add(g:functions, l)
function! Install()
    :PlugUpgrade
    :PlugUpdate
    :call PopulateReadme()
endfunction

command! Install :call Install()
" }}}
let l = ['Replace', "Replaces word in all buffers (I think)."] " {{{
:call add(g:functions, l)
function! Replace()
    let s:word = input("Replace " . expand('<cword>') . " with: ")
    :execute 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
    :unlet! s:word
endfunction
" }}}
let l = ['Search', "Searches with Ag."] " {{{
:call add(g:functions, l)
function! Search()
    let file = GetPaths()
    if type(file) == 4 && has_key(file, 'folder')
        execute ":Ag " . expand("<c-tags>") . " " . file.folder
    else
        echom "No Local Folder Found."
    endif
endfunction
" }}}
let l = ['ShowSpaces', "Show extra white spaces before EOL."] " {{{
:call add(g:functions, l)
function! ShowSpaces(...)
    let @/='\v(\s+$)|( +\ze\t)'
    let oldhlsearch=&hlsearch
    if !a:0
        let &hlsearch=!&hlsearch
    else
        let &hlsearch=a:1
    end
    return oldhlsearch
endfunction
" }}}
let l = ['SpaceTabRetab', "ReTabs and removes the spaces from file."] " {{{
:call add(g:functions, l)
function! SpaceTabRetab()
    " Mark line
    " Tab the whole file
    " Trim white extra white spaces at EOL
    " Substitutes " = " with " = "
    " Substitutes "	" with "	"
    " Go Back to marked line
    let line = line(".")
    normal gg=G
    exec "TrimSpaces"
    exec "%s/\t=\t/ = "
    exec "%s/\t /\t"
    exec "normal! " . line . "G"
endfunction
" }}}
let l = ['TrimSpaces', "Removes extra white spaces before EOL."] " {{{
:call add(g:functions, l)
function! TrimSpaces() range
    let oldhlsearch=ShowSpaces(1)
    execute a:firstline.",".a:lastline."substitute ///gec"
    let &hlsearch=oldhlsearch
endfunction
" }}}
let l = ['Unobscure', "... in alpha stage."] " {{{
:call add(g:functions, l)
function! Unobscure()
    %s/;/;\r/g
    %s/{/{\r/g
    %s/}/}\r/g
    call SpaceTabRetab()
    :%s/[\"|'] *\. *[\"|']//g
endfunction
" }}}
let l = ['VimFold', "Automatically folds some files."] " {{{
:call add(g:functions, l)
function! VimFold() " {{{
    setl fdm=marker
    norm! zM
endfunction
" }}}

" functions MoveRight/MoveLeft: Move Left/Right by mapping m[h/l] {{{
let s:blockwise = 'blockwise visual'
let s:visual = 'visual'
let s:motion = 'motion'
let s:linewise = 'linewise'

let l = ['MoveRight', "Move selection to the right."] " {{{
:call add(g:functions, l)
function! MoveRight(type, ...) abort
    let mode = Resolve_mode(a:type, a:0)
    if mode == s:motion
        silent exe 'normal! `[v`]"hdB"hPb'
    endif
endfunction

let l = ['MoveLeft', "Move selection to the left."] " {{{
:call add(g:functions, l)
function! MoveLeft(type, ...) abort
    let mode = Resolve_mode(a:type, a:0)
    if mode == s:motion
        silent exe 'normal! `[v`]"ldW"lPb'
    endif
endfunction

let l = ['Resolve_mode', "Find out if type is linewise, blockwise, or motion."] " {{{
:call add(g:functions, l)
function! Resolve_mode(type, arg)
    let visual_mode = a:arg != 0
    if visual_mode
        return (a:type == '') ?  s:blockwise : s:visual
    elseif a:type == 'line'
        return s:linewise
    else
        return s:motion
    endif
endfunction

nnoremap <silent> <Plug>MoveLeft :<C-U>set opfunc=MoveLeft<CR>g@
nnoremap <silent> <Plug>MoveRight :<C-U>set opfunc=MoveRight<CR>g@
nmap mh <Plug>MoveLeft
nmap ml <Plug>MoveRight
" }}}
