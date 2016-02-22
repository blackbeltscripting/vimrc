" Arty // Web Design and Programming
" vimrc Config File
" Begin my Version:
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
"      ___     ___ _           |___|
"      \  \   /  /|_| _    _     ___  ___
"       \  \ /  /  _ | \  / |   |  _||  _|
"        \  V  /  | ||  \/  | _ | |  | |_
"         \___/   |_||_|  |_||_||_|  |___|

" SET Variables {{{
set nocompatible				" Be iMproved, required
filetype plugin indent on		" Required
syntax enable

set bs=indent,eol,start		" Allow backspacing
set clipboard=unnamed		" Clipboard is now system wide
set diffopt=vertical		" Set Vertical Diff split as default
set directory=~/.vim/swap	" Swap [buffer] File Directory
set encoding=utf-8			" UTF encoding for vim
set foldcolumn=1			" Shows Marker Left Ln#. # = width
set nofoldenable			" Enables Fold
set foldmethod=indent		" Sets fold according to syntax
set hlsearch				" Sets search highlighting
set laststatus=2			" Shows status bar by default
set mouse=a					" Enables mouse for all modes
set number numberwidth=4	" Turns on line with width up to 9999
set nowrap					" Don't wrap
set relativenumber			" Turns on relative numbering
set shiftwidth=4			" Sets the tab in block to 1 tab
set smartcase				" Case-insensitive is all lowercase, else if at least 1 uppercase
set spell					" Turn on Spell Check
set splitright				" vSplits to the right
set t_co=256				" Sets the color index to 256 for airline
set tabstop=4				" Sets the tabindex
set textwidth=0				" Remove annoying autoWrap
set undodir=~/.vim/undodir	" Undo Directory
set undofile				" Maintain undo history between sessions
set wildmenu				" Wild char completion menu
set wildmode=full			" :<tab> progression

" Display extra whitespace
set list listchars=tab:\|·,trail:·,extends:❯,precedes:❮,eol:¬
" }}}

" VimFold autocmd {{{
function! VimFold()
	setl fdm=marker
	norm! zM
endfunction

augroup BGHighlight
	autocmd!
	autocmd BufReadPre,FileReadPre .vimrc :call VimFold()
	autocmd BufWritePost .vimrc so % | AirlineRefresh | :call VimFold()
	autocmd InsertEnter * set cursorline
	autocmd InsertLeave * set nocursorline
augroup END


" }}}

" PHP Syntax Folder, Change Leaders {{{

" PHP Syntax Folder
let php_folder=1

" Check Syntax of php file
noremap <F5> :!php -l %<CR>

" Change map leader
let mapleader=","

" Change map local leader
let maplocalleader = "\\"
" }}}

" Vundle Setup {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage vundle, required
Plugin 'VundleVim/Vundle.vim'

" }}}

" Plugins {{{

" Keep plugin commands between vundle#begin/end.
" Plugin on github repo
Plugin 'tpope/vim-fugitive'			" git commands
Plugin 'bling/vim-airline'			" statusbar pretty.
Plugin 'tpope/vim-surround'			" Surround Plugin
" Plugin 'rking/ag.vim'				" Searching with AG
Plugin 'kien/ctrlp.vim'				" ctrlp
Plugin 'mhinz/vim-startify'			" pretty start-up screen
Plugin 'Valloric/YouCompleteMe'		" autocompletion
Plugin 'jiangmiao/auto-pairs'		" make autocompletion of brackets and quotes
Plugin 'eshion/vim-sync'			" FTP/SSH tool
Plugin 'vim-scripts/tComment'		" Fast Comment Toggler
Plugin 'benmills/vimux'				" Control Tmux with Vim
Plugin 'xolox/vim-misc'				" Make Notes with Vim (Required)
Plugin 'xolox/vim-notes'			" Make Notes with Vim
Plugin 'will133/vim-dirdiff'		" Diff Directories
Plugin 'dkprice/vim-easygrep'		" Replacement of AG?
Plugin 'scrooloose/syntastic'		" Syntax Checker?
Plugin 'Townk/vim-autoclose'		" Auto Closing Tags
" Snippets plugins
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'


" }}}

" End Vundle {{{

" All of your plugins must be added before the following line
call vundle#end()			" Required
filetype plugin indent on	" Required
" }}}

" Include Sensitive Information ignored by git {{{
source ~/vimrc/Sensitive.vim
" }}}

" Custom Variables: Auto-Pairs / Airline / AG / YMC {{{

" Syntasic Basic Sets
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" AutoPairs: Disable annoying "jump" when trying to type close braces
let g:AutoPairsMultilineClose = 0

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

" Easy Grep Default Settings
let g:EasyGrepRoot = "search:.git,.hg,.svn"
let g:EasyGrepRecursive = 1
let g:EasyGrepFilesToExclude='*.swp,*~,*.md'
let g:EasyGrepIgnoreCase=0

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
let g:ycm_key_list_select_completion   = ['<tab>', '<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<C-p>', '<Up>']

" Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<right>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" }}}

" Startify Custom Settings {{{

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
let g:startify_files_number = 5

" }}}

" Color Scheme {{{

" Set Arty Theme
syntax enable
colorscheme ArtyFirst

" Special color changes
hi Normal ctermbg=none
hi Comment ctermfg=11 cterm=bold

" Cursor Line
hi CursorLine cterm=bold ctermbg=52 ctermfg=231
hi CursorColumn ctermbg=29 ctermfg=231

" Current line
hi CursorLineNR ctermfg=231 ctermbg=45 cterm=bold

" Other lines
hi LineNR ctermfg=17 ctermbg=23

" Folder
hi Folded ctermfg=231 ctermbg=30
hi FoldColumn ctermfg=231 ctermbg=30 cterm=bold

" Vertical Split
hi VertSplit ctermfg=45 ctermbg=45

" The current tab file
hi TabLineSel ctermfg=189 ctermbg=18 cterm=none cterm=bold

" All other tab files
hi TabLine ctermfg=17 ctermbg=23 cterm=bold
" The tab empty space
hi TabLineFill ctermfg=17 ctermbg=23 cterm=bold

" Highlight search
hi IncSearch ctermfg=189 ctermbg=22

" Tabspace
hi SpecialKey ctermfg=60 ctermbg=none cterm=none

" WildMenu
hi StatusLine ctermfg=16 ctermbg=190 cterm=none
hi WildMenu ctermfg=231 ctermbg=34 cterm=bold

" Override the diff colours
highlight DiffAdd term=reverse cterm=NONE ctermbg=darkblue ctermfg=white
highlight DiffDelete term=reverse cterm=NONE ctermbg=black ctermfg=blue
highlight DiffChange term=reverse cterm=NONE ctermbg=darkgray ctermfg=white
highlight DiffText term=reverse cterm=bold ctermbg=brown ctermfg=white

" Evil
"highlight ColorColumn ctermbg=red ctermfg=blue
"exec 'set colorcolumn=' . join(range(2,80,3), ',')
" }}}

" Canvas Control {{{
" -------------------

" Switch colon/semicolon
nnoremap ; :
vnoremap ; :

nnoremap : ;
vnoremap : ;

" Right hand shift canvas control
noremap L $zz
noremap H ^zz
noremap K <c-u>zz
noremap J <c-d>zz

" Quickly Add an Empty Line
nnoremap <silent><A-k> :set paste<CR>m`O<esc>``:set nopaste<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<esc>``:set nopaste<CR>

" Move around windows
nnoremap <c-j> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-i> <c-w><c-k><c-w>=<c-w>_
nnoremap <c-k> <c-w><c-j><c-w>=<c-w>_

" Move windows
nnoremap <leader>h <c-w>H
nnoremap <leader>j <c-w>J
nnoremap <leader>k <c-w>K
nnoremap <leader>l <c-w>L

" Maximize/Restore split
nnoremap <leader>x <c-w><bar><c-w>_
nnoremap <leader>k <c-w>=<c-w>_

" undo/redo
nnoremap U <c-r>

" Ctrl-R will go to insert mode and wait for register
nnoremap <C-R> i<C-R>

" When searching through blocks, center screen
nnoremap { {zz
nnoremap } }zz

" Enables Alt Usage in gnome-terminal
let c='a'
while c <= 'z'
	exec "set <A-".c.">=\e".c
	exec "imap \e".c." <A-".c.">"
	let c = nr2char(1+char2nr(c))
endw
set ttimeout ttimeoutlen=50

" }}}

" Copy/Paste {{{
vnoremap <C-C> "+y
inoremap <C-P> <esc>"+p
" }}}

" Leader Mapping {{{
" ------------------

" Unhighlight
nnoremap <leader><space> :nohls<cr>

" Adds ';' at the end of line
nnoremap <leader>; $a;<esc>
inoremap ;; <esc>$a;

" Enter button returns even in normal mode
nnoremap <return> i<return><esc>

" Same for backspace
nnoremap <bs> i<bs><esc>l

" Finally for space
nnoremap <space> i<space><esc>l

" Open Startify on this window
nnoremap <leader>o :Startify<cr>

" Create new vertical split with startify
nnoremap <leader>vs :vs<cr>:Startify<cr>

" Open this folder
" nnoremap <leader>vv :Vex<cr>

" Open .vimrc
nnoremap <leader>src :e $MYVIMRC<cr>
nnoremap <leader>vsr :vsplit $MYVIMRC<cr>

" Copy Word
nmap <leader>cw Bv$<C-C>:echom "Copied to clipboard!"
nmap <leader>c v$<C-C>

" Get snippet file
nnoremap <leader>snip :vsplit ~/vimrc/bundle/vim-snippets/snippets/%:e.snippets<cr>

" Vimgrep hotkeys
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <leader>find :call Search()<cr>
nnoremap <leader>n :cnext<cr>
nnoremap <leader>m :cprev<cr>

" Save & Reload
nnoremap <leader>s :w<cr>
noremap <leader>' :so $MYVIMRC<cr>

" Quick indent in Visual Mode
vnoremap > >gv
vnoremap < <gv

" Select Word
nnoremap <leader>sw viw

" Select Sentence
nnoremap <leader>90 (v)

" Select Block
nnoremap <leader>[] {v}

" Toggles Cursor
nnoremap <leader>cur :set cursorline! cursorcolumn!<cr>

" Toggles Spell
nnoremap <silent> <leader>sp :set spell!<CR>
" }}}

" Show Extra Whitespace {{{
" Highlight trailing white space
" http://vim.wikia.com/wiki/highlight_unwanted_spaces
highlight extrawhitespace ctermbg=red guibg=red
match extrawhitespace /\s\+$/
autocmd BufWinEnter * match extrawhitespace /\s\+$/
autocmd InsertEnter * match extrawhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match extrawhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Highlight Variable
"autocmd CursorMoved * silent! execute printf('match IncSearch /\<%s\>/', expand('<cword>'))

" }}}

" Abbreviations {{{
iabbrev waht what
iabbrev tehn then
iabbrev adn and

iabbrev @@ ericg@arty-web-design.com
" }}}

" Open any file with pre-existing swapfile {{{
augroup NoSimultaneousEdits
	autocmd!
	autocmd SwapExists * let v:swapchoice = 'o'
	autocmd SwapExists * echomsg ErrorMsg
	autocmd SwapExists * echo 'Duplicate edit session (readonly)'
	autocmd SwapExists * echohl None
	autocmd SwapExists * sleep 2
augroup END
" }}}

" FTP Functions & Mapping {{{

" Open the Remote File On Vertical Split
nnoremap <leader>vf :call VerticalFTP()<cr>

" Do Difference of FTP file
nnoremap <leader>df :call DiffFTP()<cr><c-w>hgg]c

" Saves both files and returns to local
nnoremap <leader>ds :w<cr><C-W>l :w<cr><C-W>h

" Saves current file and also saves directly to FTP
nnoremap <leader>DS :w<cr> :call SaveFTP()<cr>

function! Search()
	let file = GetPaths()
	if type(file) == 4 && has_key(file, 'folder')
		execute ":Ag " . expand("<c-tags>") . " " . file.folder
	else
		echom "No Local Folder Found."
	endif
endfunction

function! SaveFTP()
	let file = GetPaths()
	execute "Nwrite " . file.ftp . expand('%')
endfunction

function! VerticalFTP()
	let file = GetPaths()
	execute "vs " . file.ftp . expand('%')
endfunction

function! DiffFTP()
	let file = GetPaths()
	execute "diffsplit " . file.ftp . expand('%')
endfunction

function! GetPaths()
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

" END }}}

" Function & Mapping: GitGo() {{{
"
" command! -nargs=+ -complete=option GitUpload :call GitGo(<q-args>)
" nnoremap <leader>git :w<cr>:GitUpload<space>
"
" function! GitGo(comment)
" 	let file = GetPaths()
" 	if type(file) == 4 && has_key(file, 'git')
" 		execute "cd " . file.git
" 		execute "! sudo git add . | git commit -a -m '" . a:comment . "' | git push"
" 	else
" 		echom "Git File Not Found. Project not pushed."
" 	endif
" endfunction
"
" " END }}}
" Function & Mapping: Base64Decode() {{{
" var decodes and replaces
function! Base64Decode()
		let str = 'base64_decode([",''][^)]*)'
		let total_str = search(str)
		normal 14l
		let quot = matchstr(getline('.'), '\%' . col('.') . 'c.')
		exec "normal! yi" . quot
		let decoded = system('base64 -d', @")
		echom decoded
		exec 'substitute/' . str . '/' . quot . escape(decoded, '\\/.*$^~[]') . quot . '/'
endfunction

nnoremap <leader>64 :call Base64Decode()<cr>
" }}}
" Function & Mapping: SwitchWord() {{{
nnoremap <leader>ml :call SwitchWord('right')<cr>
nnoremap <leader>mh :call SwitchWord('left')<cr>

function! SwitchWord(position)
	if a:position == 'right'
		execute "normal! dawf ph"
	elseif a:position == 'left'
		execute "normal! dawBPh"
	endif
	echo "Word moved to the " . a:position
endfunction
" }}}
" Function & Mapping: HLNext() {{{
nnoremap <silent> n   n:call HLNext(0.4)<cr>
nnoremap <silent> N   N:call HLNext(0.4)<cr>

" briefly hide everything except the match
function! HLNext (blinktime)
	highlight BlackOnBlack ctermfg=black term=none
	highlight WhiteOnRed ctermfg=white ctermbg=red
	let [bufnum, lnum, col, off]  = getpos('.')
	let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
	let hide_pat = '\%<'.lnum.'l.'
				\ . '\|'
				\ . '\%'.lnum.'l\%<'.col.'v.'
				\ . '\|'
				\ . '\%'.lnum.'l\%>'.(col+matchlen-1).'v.'
				\ . '\|'
				\ . '\%>'.lnum.'l.'
	let target_pat = '\c\%#\%('.@/.'\)'
	let ring = matchadd('BlackOnBlack', hide_pat, 101)
	let ring1= matchadd('WhiteOnRed', target_pat, 101)
	redraw
	exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
	call matchdelete(ring)
	call matchdelete(ring1)
	redraw
endfunction
" }}}
" Function & Mapping: Replace() {{{
noremap <leader>r :call Replace()<CR>

function! Replace()
  let s:word = input("Replace " . expand('<cword>') . " with: ")
  :execute 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
  :unlet! s:word
endfunction
" }}}
" Function & Mapping: HandleURL() {{{
function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    exec "!gnome-open '".s:uri."'"
  else
    echo "No URI found in line."
  endif
endfunction

noremap <leader>u :call HandleURL()<cr>
" }}}
" Function & Mapping: SpaceTabRetab() {{{

" Trim white spaces, tab page, retab
nnoremap <leader>tab :call SpaceTabRetab()<cr>

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

function! TrimSpaces() range
		let oldhlsearch=ShowSpaces(1)
		execute a:firstline.",".a:lastline."substitute ///gec"
		let &hlsearch=oldhlsearch
endfunction

command! -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command! -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()

" Mark line
" Tab the whole file
" Trim white extra white spaces at EOL
" Substitutes "	=	" with " = "
" Substitutes "	 " with "	"
" Go Back to marked line
function! SpaceTabRetab()
		let line = line(".")
		normal gg=G
		exec "TrimSpaces"
		exec "%s/\t=\t/ = "
		exec "%s/\t /\t"
		exec "normal! " . line . "G"
endfunction
" }}}
" <C-S-J> try this later
