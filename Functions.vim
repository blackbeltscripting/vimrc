" ==========
" Functions:
" ==========

let g:functions = []

let l = ['PopulateReadme', "Gets all Plugins, Functions, and Leader Maps and places them inside the README file. Then automatically commits changes to github."] " {{{
:call add(g:functions, l)
function! PopulateReadme()
    call YankAndPutVariables('Plugins')
    call YankAndPutVariables('Functions')
    call YankAndPutMapping('Key')
    call YankAndPutMapping('Leader')
    call YankAndPutMapping('LocalLeader')
    !git commit -am 'Auto-commit using PopulateReadMe() vim function.'
    !git push
    normal! ZZ
endfunction
" }}}"
let l = ['YankAndPutVariables', "Gets variables and populates it to README.md file."] " {{{
:call add(g:functions, l)
function! YankAndPutVariables(t)
    if (split(expand('%:p:h'), '/')[-1] != 'vimrc' || expand('%:t') != 'README.md')
       vs $HOME/vimrc/README.md
    endif
    normal! gg
    let top = search(a:t . '\n=*', 'b')
    if top > 0
        normal! 2j0d}k
        let line = []
        if a:t == 'Plugins'
            let w_l = g:plugins
        elseif a:t == 'Functions'
            let w_l = g:functions
        endif
        for plug in w_l
            if a:t == 'Plugins'
                let p = split(plug[0], '/')
                call add(line, ' * [' . p[1] . '](https://github.com/' . plug[0] . ')')
            elseif a:t == 'Functions'
                call add(line, ' * `' . plug[0] . '()` ' . plug[1])
            endif
        endfor
        call sort(line)
        silent! put=line
    endif
endfunction
" }}}
let l = ['YankAndPutMapping', "Gets Key, Leader, or LocalLeader and populates it to README.md file."] " {{{
:call add(g:functions, l)
function! YankAndPutMapping(t)
    if (split(expand('%:p:h'), '/')[-1] != 'vimrc' || expand('%:t') != 'README.md')
        vs $HOME/vimrc/README.md
    endif
    normal! gg
    let search = a:t . ' Mapping'
    let top = search(search . '\n=*', 'W')
    if top == 0
        echo 'No ' . search . ' Found. Making it at the bottom.'
        let temp = @m
        let @m = search . "\n"
        normal! G2"mpjVr=$
        let @m = " * temp \n\n\n"
        normal! "mp2k0
        let @m = temp
    endif
    normal! 2j
    call search('\n\n\n', 'esW')
    normal! kd`'ddk
    execute ('vs $HOME/vimrc/' . a:t . 'Mapping.vim')
    normal! gg}j"by}ZQ
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
            let s = split(l, '|[ ]')
            let comment = substitute(s[1], '^\s*"', '', 'g')
            let mapping = split(s[0], ' ')
            let ll = ' * <kbd>' . escape(mapping[1], '<>') . '</kbd>' . comment
            call add(line, ll)
        endif
    endfor
    put=line
endfunction
" }}}
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
let l = ['Update', "Upgrades Vim-Plug, Updates Plugins, Fires Populate Readme"] " {{{
:call add(g:functions, l)
function! Update()
    :PlugUpgrade
    :PlugUpdate
    call PopulateReadme()
endfunction

command! Update :call Update()
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
function! VimFold()
    setl fdm=marker
    norm! zM
endfunction
" }}}

" instantiate resolve modes {{{
let s:blockwise = 'blockwise visual'
let s:visual = 'visual'
let s:motion = 'motion'
let s:linewise = 'linewise'
" }}}
let l = ['MoveRight', "Move selection to the right."] " {{{
:call add(g:functions, l)
function! MoveRight(type, ...) abort
    let mode = Resolve_mode(a:type, a:0)
    if mode == s:motion
        silent exe 'normal! `[v`]"hdB"hPb'
    endif
endfunction
" }}}
let l = ['MoveLeft', "Move selection to the left."] " {{{
:call add(g:functions, l)
function! MoveLeft(type, ...) abort
    let mode = Resolve_mode(a:type, a:0)
    if mode == s:motion
        silent exe 'normal! `[v`]"ldW"lPb'
    endif
endfunction
" }}}
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
" }}}
" Mapping MoveLeft/MoveRight {{{
nnoremap <silent> <Plug>MoveLeft :<C-U>set opfunc=MoveLeft<CR>g@
nnoremap <silent> <Plug>MoveRight :<C-U>set opfunc=MoveRight<CR>g@
nmap mh <Plug>MoveLeft
nmap ml <Plug>MoveRight
" }}}

function! SortAllFolds()
    let foldlist = []
    let poslist = []
    let old_f = @f
    normal! ggzjzc"fyy
    " First we get the position of all folds.
    " Then we temporarily yank the fold to register 'f'
    while len(poslist) == 0 || poslist[-1] != getpos('.')
        call add(poslist, getpos('.'))
        call add(foldlist, @f)
        call setpos('.', poslist[-1])
        normal zjzc"fyy
    endwhile
    let foldlist = sort(foldlist)
    let i = 0
    if len(poslist) == len(foldlist)
        while i <= len(poslist)
            call setpos('.', poslist[i])
            normal! dd
            put = foldlist[i]
            let i += 1
        endwhile
    endif
endfunction
