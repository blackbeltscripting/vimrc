" Leader Mapping:
let g:leader = []
let l = ['<space>', "Unhighlight Search word"] " {{{
:call add(g:leader, l)
nnoremap <leader><space> :nohls<cr>
" }}}
let l = ['{', "Make vim fold around block and closes it"] " {{{
:call add(g:leader, l)
nnoremap <leader>{ $a <esc>3a{<esc>}O<esc>3a}<esc>:Commentary<cr>zM
" }}}
let l = [';', "Adds semicolon at EOL"] " {{{
:call add(g:leader, l)
nnoremap <leader>; $a;<esc>
" }}}
let l = ['c', "Saves, then sends command to tmux"] " {{{
:call add(g:leader, l)
nnoremap <leader>c :w<cr>:VtrSendCommandToRunner<cr>:VtrFocusRunner<cr>
" }}}
let l = ['cm', "Sends make command to runner and focuses the pane"] " {{{
:call add(g:leader, l)
nnoremap <leader>cm :VtrSendCommandToRunner make<CR>:VtrFocusRunner<CR>
" }}}
let l = ['conc', "Concatonates inside parentheses using '.' delimiter"] " {{{
:call add(g:leader, l)
nnoremap <leader>conc :call Concatonate()<cr>
" }}}
" [h/j/k/l]: Resize Splits [left/maximize/restore/right] {{{
let l = ['h', "Resize Split to the left"] " {{{
:call add(g:leader, l)
nnoremap <leader>h <c-w>10<
" }}}
let l = ['j', "Maximize Splits"] " {{{
:call add(g:leader, l)
nnoremap <leader>j <c-w><bar><c-w>_
" }}}
let l = ['k', "Restore Splits"] " {{{
:call add(g:leader, l)
nnoremap <leader>k <c-w>=<c-w>_
" }}}
let l = ['l', "Resize Split to the right"] " {{{
:call add(g:leader, l)
nnoremap <leader>l <c-w>10>
" }}}
" }}}
let l = ['ml', "Move word to the right"] " {{{
:call add(g:leader, l)
:call add(g:leader, l)
nnoremap <leader>ml :call SwitchWord('right')<cr>
" }}}
let l = ['q', "Opens this file and dumps macro at reg q"] " {{{
:call add(g:leader, l)
nnoremap <leader>q :vsplit ~/vimrc/LeaderMapping.vim<cr>zMjzoztonnoremap normal! <esc>"vq0ea
" }}}
let l = ['s', "Saves file"] " {{{
:call add(g:leader, l)
nnoremap <leader>s :w<cr>
" }}}
let l = ['so', "sources .vimrc"] " {{{
:call add(g:leader, l)
noremap <leader>so :w<cr>:so $MYVIMRC<cr>zM
" }}}
let l = ['soz', "sources .vimrc and closes"] " {{{
:call add(g:leader, l)
noremap <leader>soz :w<cr>:so $MYVIMRC<cr>:q<cr>
" }}}
let l = ['src', "Open .vimrc"] " {{{
:call add(g:leader, l)
nnoremap <leader>src :e $MYVIMRC<cr>
" }}}
" t[l/s/w]: Toggles on/off [line/spell/wrap] {{{
let l = ['tl', "Toggle relativenumber"] " {{{
:call add(g:leader, l)
nnoremap <leader>tl :set number relativenumber!<cr>
" }}}
let l = ['ts', "Toggle spell"] " {{{
:call add(g:leader, l)
nnoremap <leader>ts :set spell!<CR>
" }}}
let l = ['tw', "Toggle wrap"] " {{{
:call add(g:leader, l)
nnoremap <leader>tw :set nowrap!<cr>
" }}}
" }}}
let l = ['tab', "Retabs the entire pane"] " {{{
:call add(g:leader, l)
nnoremap <leader>tab :call SpaceTabRetab()<cr>
" }}}
let l = ['u', "Open URI in chrome"] " {{{
:call add(g:leader, l)
noremap <leader>u :call HandleURL()<cr>
" }}}
" v[Ff/h/k/g:l/p/s]: Open Visual Split [Default: Startify] {{{
let l = ['v', "Open Startify [Defaul]" ] " {{{
:call add(g:leader, l)
nnoremap <leader>v :vs<cr>:Startify<cr>
" }}}
let l = ['vF', "Open FZF"] " {{{
:call add(g:leader, l)
nnoremap <leader>vF :vs<cr>:FZF<cr>
" }}}
let l = ['vf', "Open Functions.vim"] " {{{
:call add(g:leader, l)
nnoremap <leader>vf :vsplit ~/vimrc/Functions.vim<cr>zM
" }}}
let l = ['vh', "Open help of <C-WORD>"] " {{{
:call add(g:leader, l)
nnoremap <leader>vh *:vert h <C-R>/<cr>
" }}}
let l = ['vk', "Open KeyMapping.vim"] " {{{
:call add(g:leader, l)
nnoremap <leader>vk :vsplit ~/vimrc/KeyMapping.vim<cr>zM
" }}}
let l = ['vl', "Open LeaderMapping.vim"] " {{{
:call add(g:leader, l)
nnoremap <leader>vl :vsplit ~/vimrc/LeaderMapping.vim<cr>zM
" }}}
let l = ['vp', "Open Plugins.vim"] " {{{
:call add(g:leader, l)
nnoremap <leader>vp :vsplit ~/vimrc/Plugins.vim<cr>zo
" }}}
let l = ['vs', "Open .vimrc"] " {{{
:call add(g:leader, l)
nnoremap <leader>vs :vsplit $MYVIMRC<cr>
" }}}
" }}}
" w[h/j/k/l]: Swap Window [left/down/up/right] {{{
let l = ['wh', "Swap Window Left"] " {{{
:call add(g:leader, l)
nnoremap <leader>wh <c-w>H
" }}}
let l = ['wj', "Swap Window Down"] " {{{
:call add(g:leader, l)
nnoremap <leader>wj <c-w>J
" }}}
let l = ['wk', "Swap Window Up"] " {{{
:call add(g:leader, l)
nnoremap <leader>wk <c-w>K
" }}}
let l = ['wl', "Swap Window Right"] " {{{
:call add(g:leader, l)
nnoremap <leader>wl <c-w>L
" }}}
" }}}

" Deprecated {{{
" cv: Faster variable value fetching {{{
nnoremap <leader>cv "vdwdw"rd$dd/<C-r>v<del><cr>viw"rp
" }}}
" vf: Calls VerticalFTP() a Deprecated function. {{{
" nnoremap <leader>vf :call VerticalFTP()<cr>
" }}}
" cw: Copy Word {{{
nmap <leader>cw Bv$<C-C>:echom "Copied to clipboard!"<cr>
" }}}
" cvar: Fetch variable and its value {{{
nnoremap <leader>cvar "vdwdw"rd$dd
" }}}
" df: Do Difference of FTP file {{{
nnoremap <leader>df :call DiffFTP()<cr><c-w>hgg]c
" }}}
" ds: Saves both files and returns to local {{{
nnoremap <leader>ds :w<cr><C-W>l :w<cr><C-W>h
" }}}
" DS: Saves current file and also saves directly to FTP {{{
nnoremap <leader>DS :w<cr> :call SaveFTP()<cr>
" }}}
" Vimgrep hotkeys {{{
nnoremap <leader>find :call Search()<cr>
nnoremap <leader>n :cnext<cr>
nnoremap <leader>m :cprev<cr>
" }}}
" snip: Get snippet file {{{
nnoremap <leader>snip :vsplit ~/vimrc/bundle/vim-snippets/snippets/%:e.snippets<cr>
" }}}
" pv: Not sure... pastes it all? {{{
nnoremap <leader>pv nviw"rp
" }}}
" pvar: Search and paste value fetched {{{
nnoremap <leader>pvar /v<del><cr>viw"rp
" }}}
" }}}
