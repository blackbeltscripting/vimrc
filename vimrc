" Arty // Web Design and Programming
" vimrc Config File
" Begin my Version:
" Note: <C-S-J> try this later
"                       ___
"          ___....-----'---'-----....___
"     =======================================
"           ___'---..._______...---'___
"          (___)      _)_|_(_      (___)
"            \\____.-'_.---._'-.____//
"             '----..__'---'__..----'
"                      -----
"              _____       _
"             |  _  | ___ | |_  _ _
"             |     ||  _||  _|| | |
"             |__|__||_|  |_|  |_  |
"       ___     ___ _          |___|
"       \  \   /  /|_| _    _  ___  ___
"        \  \ /  /  _ | \  / ||  _||  _|
"         \  V  /  | ||  \/  || |  | |_
"          \___/   |_||_|  |_||_|  |___|

" SET Options: {{{
set nocompatible			" Be iMproved, required
syntax enable

set bs=indent,eol,start			" Allow backspacing
set clipboard=unnamed			" Clipboard is now system wide
set diffopt=vertical			" Set Vertical Diff split as default
set directory=~/.vim/swap		" Swap [buffer] File Directory
" set encoding=utf-8			" UTF encoding for vim
set foldcolumn=1			" Shows Marker Left Ln#. # = width
" set foldlevel=99                        " Opens all folds by default
set nofoldenable			" Enables Fold
set foldmethod=marker			" Sets fold according to syntax
set ignorecase                          " Ignores Case in Search
set hlsearch				" Sets search highlighting
set laststatus=2			" Shows status bar by default
set mouse=n				" Mouse touch in normal mode only
set number numberwidth=2		" Turns on line with width up to 9999;
set relativenumber			" Turns on relative numbering
" set shiftwidth=4			" Sets the tab in block to 1 tab
set smartcase				" Case-insensitive if it's all lowercase
" set softtabstop=0			" Removing Tabs with the 'tab' button
set nospell				" Turn off Spell Check
set splitright				" vSplits to the right
set t_co=256				" Sets the color index for airline
" set tabstop=4				" Sets the tabindex
set timeoutlen=1000 ttimeoutlen=0	" Remove Esc Lag
set textwidth=0				" Remove annoying autoWrap
set undodir=~/.vim/undodir		" Undo Directory
set undofile				" Maintain undo history
" set updatetime=10000			" Insert Mode will go to Normal Mode
set wildmenu				" Wild char completion menu
set wildmode=full			" :<tab> progression

" Tabs are now 4 spaces.
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" Display extra whitespace
set list listchars=tab:\|·,trail:·,extends:❯,precedes:❮,eol:¬
" SET Options: }}}
" Import Plugins: {{{
source ~/vimrc/Plugins.vim
" }}}
" vim-plug Setup {{{
call plug#begin('~/.vim/plugged')
" Plugins:
for bundle in g:plugins
    let trace = ''
    if len(bundle) > 1
        let trace = ', ' . bundle[1]
    endif
    execute "Plug '" . bundle[0] . "'" . trace
endfor
call plug#end()
" }}}
"  Color Scheme: {{{
"
" " Set Arty Theme
syntax enable
" colorscheme ArtyFirst
" colorscheme src
let g:airline_theme='bubblegum'
" colorscheme brogrammer

" Search highlight
hi Search ctermfg=white ctermbg=green

" Special color changes
" hi Normal ctermbg=none
" hi Comment ctermfg=11 cterm=bold
"
" " Cursor Line
" hi CursorLine cterm=none ctermbg=52 ctermfg=231 hi CursorColumn ctermbg=red ctermfg=white
"
" " Current line
" hi CursorLineNR ctermfg=white ctermbg=red cterm=bold
"
" " Other lines
" hi LineNR ctermfg=yellow ctermbg=none cterm=none
"
" " Folder
" hi Folded ctermfg=yellow ctermbg=black
" " hi Folded ctermfg=white ctermbg=34
" hi FoldColumn ctermfg=231 ctermbg=30 cterm=bold
"
" " Vertical Split
" hi VertSplit ctermfg=yellow ctermbg=yellow
"
" " The current tab file
" hi TabLineSel ctermfg=189 ctermbg=18 cterm=none cterm=bold
"
" " All other tab files
" hi TabLine ctermfg=17 ctermbg=23 cterm=bold
"
" " The tab empty space
" hi TabLineFill ctermfg=17 ctermbg=23 cterm=bold
"
" " Highlight search
" hi IncSearch ctermfg=189 ctermbg=22
"
" " Tabspace
" hi SpecialKey ctermfg=60 ctermbg=none cterm=none
"
" " WildMenu
" hi StatusLine ctermfg=16 ctermbg=190 cterm=none
" hi WildMenu ctermfg=231 ctermbg=34 cterm=bold
"
" " Override the diff colours
" highlight DiffAdd term=reverse cterm=NONE ctermbg=darkblue ctermfg=white
" highlight DiffDelete term=reverse cterm=NONE ctermbg=black ctermfg=blue
" highlight DiffChange term=reverse cterm=NONE ctermbg=darkgray ctermfg=white
" highlight DiffText term=reverse cterm=bold ctermbg=brown ctermfg=white
"
" Highlight trailing white space
" http://vim.wikia.com/wiki/highlight_unwanted_spaces
highlight extrawhitespace ctermbg=red guibg=red

" Evil
highlight ColorColumn ctermbg=red ctermfg=blue
" exec 'set colorcolumn=' . join(range(2,80,3), ',')
" }}}
" Abbreviations: {{{
iabbrev @@ ericg@arty-web-design.com
iabbrev adn and
iabbrev tehn then
iabbrev waht what
cabbrev h vert h
" Abbreviations: }}}
" AutoCommands: {{{
au BufRead * normal zM
" Custom AutoCommands: {{{
" Fold all markers before loading file
" autocmd BufWritePre,BufRead *.py :call VimFold()

" Move from Insert Mode to Normal Mode
" au CursorHoldI * stopinsert

" Highlight Column 80 when in Insert mode
" au CursorMoved,CursorMovedI,InsertLeave * call Col80()

" Highlight Variable
"autocmd CursorMoved * silent! execute printf('match IncSearch /\<%s\>/', expand('<cword>'))
" Custom AutoCommands: }}}
" Show Trailing Whitespace {{{
" Highlight trailing white space
" http://vim.wikia.com/wiki/highlight_unwanted_spaces
match extrawhitespace /\s\+$/
autocmd BufWinEnter * match extrawhitespace /\s\+$/
autocmd InsertEnter * match extrawhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match extrawhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" }}}
augroup BGHighlight " {{{
    autocmd!
    autocmd BufReadPre,FileReadPre .vimrc :call VimFold()
    autocmd BufWritePost .vimrc so % | AirlineRefresh | :call VimFold()
    autocmd InsertEnter * set cursorline
    autocmd InsertLeave * set nocursorline
augroup END
" }}}
augroup NoSimultaneousEdits " {{{
    autocmd!
    autocmd SwapExists * let v:swapchoice = 'o'
    autocmd SwapExists * echomsg ErrorMsg
    autocmd SwapExists * echo 'Duplicate edit session (readonly)'
    autocmd SwapExists * echohl None
    autocmd SwapExists * sleep 2
augroup END
" }}}
" AutoCommands: }}}

" Custom Variables For Plugins: {{{
" Custom Variables: AG {{{
" Easy Grep Default Settings
let g:EasyGrepRoot = "search:.git,.hg,.svn"
let g:EasyGrepRecursive = 1
let g:EasyGrepFilesToExclude='*.swp,*~,*.md'
let g:EasyGrepIgnoreCase=0
" }}}
" Custom Variables: Airline {{{
" Makes airline statusbar work properly with uft-8 chars
let g:airline_powerline_fonts = 1

" Shortened Mode Map
let g:airline_mode_map = {
            \ '__' : '-',
            \ 'n'  : 'N',
            \ 'i'  : 'I',
            \ 'R'  : 'R',
            \ 'c'  : 'C',
            \ 'v'  : 'V',
            \ 'V'  : 'V',
            \ '' : 'V',
            \ 's'  : 'S',
            \ 'S'  : 'S',
            \ '' : 'S',
            \ }
" }}}
" Custom Variables: Auto-Pairs {{{
" Syntasic Basic Sets

" NOTE: This is giving me errors. Not sure why.
" I think because I removed syntastic

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" END: NOTE

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_checkers = ['python3']
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" AutoPairs: Disable annoying "jump" when trying to type close braces
let g:AutoPairsMultilineClose = 0
" }}}
" Custom Variables: Netrw {{{
let g:netrw_liststyle = 2
" }}}
" Custom Variables: PHP Syntax Folder {{{
let php_folder=1
" }}}
" Custom Variables: vim-tmux-runner {{{
let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1
let g:VtrUseVtrMaps = 1
" }}}
" Custom Variables: Startify {{{

" Startify skip list
let g:startify_skiplist = [ $HOME . '/.vimrc', $HOME . '/vimrc/*' ]

" Cool ASCII
let g:startify_custom_header = [
            \ "                       ___",
            \ "          ___....-----'---'-----....___",
            \ "     =======================================",
            \ "           ___'---..._______...---'___",
            \ "          (___)      _|_|_|_      (___)",
            \ "             \\____.-'_.---._'-.____/",
            \ "              cccc'.__'---'__.'cccc",
            \ "                      ccccc",
            \ "               _____       _",
            \ "              |  _  | ___ | |_  _ _",
            \ "              |     ||  _||  _|| | |",
            \ "              |__|__||_|  |_|  |_  |",
            \ "                               |___|",
            \ ]

" let g:startify_custom_footer = map(split(system('fortune | cowsay -f tux'), '\n'), '"   ". v:val') + ['','']

" Startify list order
let g:startify_list_order = [['   Recent Files:'], 'files', ['   Bookmarks'], 'bookmarks']

" Startify Number per List
let g:startify_files_number = 9

" }}}
" Custom Variables: YCM {{{
" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
let g:ycm_key_list_select_completion   = ['<tab>', '<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<C-k>', '<Up>']

" Plugin 'SirVer/ultisnips'
" This variable was <right>
let g:UltiSnipsExpandTrigger="<nop>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:ulti_expand_or_jump_res = 0
function! <SID>ExpandSnippetOrReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=<SID>ExpandSnippetOrReturn()<CR>" : "\<CR>"
" }}}
" Custom Variables For Plugins: }}}

" Import: Mapping, Functions, Sensitive {{{
let mapleader="\<Space>"
let maplocalleader = "\\"
let filestosource = [
            \ 'KeyMapping.vim',
            \ 'LeaderMapping.vim',
            \ 'Functions.vim',
            \ 'Sensitive.vim',
            \ 'concatonate.vim',
            \ ]
for f in filestosource
    let file = $HOME . '/' . f
    if filereadable(file)
        source file
    endif
endfor
" }}}
