" Functions:
function! PutPlugins() " {{{
    :vs $HOME/vimrc/README.md
    /Plugins
    normal! 2j0d}k
    for plug in g:plugins
        let p = split(plug[0], '/')
        let line = ' * [' . p[1] . '](https://github.com/' . plug[0] . ')'
        :put =line
    endfor
    /Leader Mapping
    normal! 2j0d}k
    for l in g:leader
        let line = ' * `' . l[0] . '` ' . l[1]
        :put =line
    endfor
    normal! ZZ
    echo 'README file has updated plugins, leader mapping.'
endfunction
" }}}"
function! Col80() " {{{
    if virtcol('.') >= 80
        exec 'set colorcolumn=80'
    else
        exec 'set colorcolumn&'
    endif
endfunction
" }}}
function! Base64Decode() " {{{
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
function! Concatonate() " {{{
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
function! GetFunctionName() " {{{
    normal! F(hyiw
    let function = @
    return function
endfunction
" }}}
function! DiffFTP() " {{{
    let file = GetPaths()
    execute "diffsplit " . file.ftp . expand('%')
endfunction
" }}}
" function! ExecuteMacroOverVisualRange() {{{
" Got this so it executes macro while in visual mode
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
" }}}
function! GetPaths() " {{{
    " Go to this file's path
    execute "cd " expand("%:p:h")
    " Split the path into a list
    let path = split(expand('%:p:h'), '/')
    " We know that our path is in /home/Public/... so path must have at least 3 values
    if len(path) > 2
        if path[2] == 'Public'
            " We instance each site in list
            for site in g:arty_ftp_sites
                " Do we have a local folder set?
                if type(site) == 4 && site.local_folder == path[3]
                    let ftp = site.ftp
                    let subf = join(path[4:], '/')
                    if !empty(subf)
                        let ftp .= subf . '/'
                    endif
                    let git = ""
                    if exists('site.git_folder')
                        " Comparison statement and return the paths
                        let max = len(split(site.git_folder, '/')) + 2
                        if site.git_folder == join(path[3:max], '/')
                            let git = '/' . join(path[:max], '/')
                        endif
                    endif
                    let folder = join(path[:3], '/')
                    return {'ftp' : ftp, 'git' : git, 'folder' : folder}
                endif
            endfor
        endif
    endif
endfunction
" }}}
function! HandleURL() " {{{
    let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
    echo s:uri
    if s:uri != ""
        exec "!gnome-open '".s:uri."'"
    else
        echo "No URI found in line."
    endif
endfunction
" }}}
" function! HLNext(blinktime) " {{{
"     " Briefly hide everything except the search match
"     highlight BlackOnBlack ctermfg=black term=none
"     highlight WhiteOnRed ctermfg=white ctermbg=red
"     let [bufnum, lnum, col, off]  = getpos('.')
"     let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
"     let hide_pat = '\%<'.lnum.'l.'
"                 \ . '\|'
"                 \ . '\%'.lnum.'l\%<'.col.'v.'
"                 \ . '\|'
"                 \ . '\%'.lnum.'l\%>'.(col+matchlen-1).'v.'
"                 \ . '\|'
"                 \ . '\%>'.lnum.'l.'
"     let target_pat = '\c\%#\%('.@/.'\)'
"     let ring = matchadd('BlackOnBlack', hide_pat, 101)
"     let ring1= matchadd('WhiteOnRed', target_pat, 101)
"     redraw
"     exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
"     call matchdelete(ring)
"     call matchdelete(ring1)
"     redraw
" endfunction
" " }}}
function! Replace() " {{{
    let s:word = input("Replace " . expand('<cword>') . " with: ")
    :execute 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
    :unlet! s:word
endfunction
" }}}
function! SaveFTP() " {{{
    let file = GetPaths()
    execute "Nwrite " . file.ftp . expand('%')
endfunction
" }}}
function! Search() " {{{
    let file = GetPaths()
    if type(file) == 4 && has_key(file, 'folder')
        execute ":Ag " . expand("<c-tags>") . " " . file.folder
    else
        echom "No Local Folder Found."
    endif
endfunction
" }}}
function! ShowSpaces(...) " {{{
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
function! SpaceTabRetab() " {{{
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
function! SwitchWord(position) " {{{
    if a:position == 'right'
        execute "normal! dawf ph"
    elseif a:position == 'left'
        execute "normal! dawBPh"
    endif
    echo "Word moved to the " . a:position
endfunction
" }}}
function! TrimSpaces() range " {{{
    let oldhlsearch=ShowSpaces(1)
    execute a:firstline.",".a:lastline."substitute ///gec"
    let &hlsearch=oldhlsearch
endfunction
" }}}
function! Unobscure() " {{{
    %s/;/;\r/g
    %s/{/{\r/g
    %s/}/}\r/g
    call SpaceTabRetab()
    :%s/[\"|'] *\. *[\"|']//g
endfunction
" }}}
function! VerticalFTP() " {{{
    let file = GetPaths()
    execute "vs " . file.ftp . expand('%')
endfunction
" }}}
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

function! MoveRight(type, ...) abort
    let mode = Resolve_mode(a:type, a:0)
    if mode == s:motion
        silent exe 'normal! `[v`]"hdB"hPb'
    endif
endfunction

function! MoveLeft(type, ...) abort
    let mode = Resolve_mode(a:type, a:0)
    if mode == s:motion
        silent exe 'normal! `[v`]"ldW"lPb'
    endif
endfunction

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
