" ===============
" Leader Mapping:
" ===============

" nnoremap: {{{
" -------------
nnoremap <leader>; $a;<esc>| " Adds semicolon at EOL
nnoremap <leader><space> :nohls<cr>| " Unhighlight Search word
nnoremap <leader>c :w<cr>:VtrSendCommandToRunner<cr>:VtrFocusRunner<cr>| " Saves, then sends command to tmux
nnoremap <leader>cm :VtrSendCommandToRunner make<CR>:VtrFocusRunner<CR>| " Sends make command to runner and focuses the pane
nnoremap <leader>conc :call Concatonate()<cr>| " Concatonates inside parentheses using '.' delimiter
nnoremap <leader>h <c-w>10<| " Resize Split to the left
nnoremap <leader>j <c-w><bar><c-w>_| " Maximize Splits
nnoremap <leader>k <c-w>=<c-w>_| " Restore Splits
nnoremap <leader>l <c-w>10>| " Resize Split to the right
nnoremap <leader>mh :call SwitchWord('left')<cr>| " Move word to the left
nnoremap <leader>ml :call SwitchWord('right')<cr>| " Move word to the right
nnoremap <leader>o :Startify<cr>| " Open Startify
nnoremap <leader>q :vsplit ~/vimrc/LeaderMapping.vim<cr>zMjzoztonnoremap normal! <esc>"vq0ea| " Vertical split LeaderMapping.vim and dumps macro at reg q
nnoremap <leader>s :w<cr>| " Saves file
nnoremap <leader>src :e $MYVIMRC<cr>| " Open .vimrc
nnoremap <leader>tab :call SpaceTabRetab()<cr>| " Retabs the entire pane
nnoremap <leader>tl :set number relativenumber!<cr>| " Toggle relativenumber
nnoremap <leader>ts :set spell!<CR>| " Toggle spell
nnoremap <leader>tw :set nowrap!<cr>| " Toggle wrap
nnoremap <leader>v :vs<cr>:Startify<cr>| " Vertical Split Startify [Default]
nnoremap <leader>vF :vs<cr>:FZF<cr>| " Vertical Split FZF
nnoremap <leader>vf :vsplit ~/vimrc/Functions.vim<cr>zM| " Vertical Split Functions.vim
nnoremap <leader>vh *:vert h <C-R>/<cr>| " Vertical Split help of current word in pointer
nnoremap <leader>vk :vsplit ~/vimrc/KeyMapping.vim<cr>zM| " Vertical Split KeyMapping.vim
nnoremap <leader>vl :vsplit ~/vimrc/LeaderMapping.vim<cr>zM| " Vertical Split LeaderMapping.vim
nnoremap <leader>vp :vsplit ~/vimrc/Plugins.vim<cr>zo| " Vertical Split Plugins.vim
nnoremap <leader>vs :vsplit $MYVIMRC<cr>| " Vertical Split .vimrc
nnoremap <leader>wh <c-w>H| " Swap Window Left
nnoremap <leader>wj <c-w>J| " Swap Window Down
nnoremap <leader>wk <c-w>K| " Swap Window Up
nnoremap <leader>wl <c-w>L| " Swap Window Right
nnoremap <leader>ym 'ty'b| " Yanks from mark `t` to mark `b`
nnoremap <leader>{ $a <esc>3a{<esc>}O<esc>3a}<esc>:Commentary<cr>zM| " Make vim fold around block and closes it
" }}}
" normap: {{{
" -----------
noremap <leader>so :w<cr>:so $MYVIMRC<cr>zMzo| " sources .vimrc
noremap <leader>sog :w<cr>:so $MYVIMRC<cr>zMzo@:| " source .vimrc and do last command
noremap <leader>soz :w<cr>:so $MYVIMRC<cr>:q<cr>| " sources .vimrc and closes
noremap <leader>u :call HandleURL()<cr>| " Open URI in chrome
" }}}
" vnoremap: {{{
" -------------
vnoremap <leader>; y:@"<cr>| " In visual mode, it will do `:@\"`
" }}}

" Deprecated {{{
" cv: Faster variable value fetching {{{
nnoremap <leader>cv "vdwdw"rd$dd/<C-r>v<del><cr>viw"rp
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
