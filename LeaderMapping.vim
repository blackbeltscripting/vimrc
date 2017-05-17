" ===============
" Leader Mapping:
" ===============

" nnoremap: {{{
" -------------
nnoremap <leader>; $a;<esc>| " Adds semicolon at EOL
nnoremap <leader><space> :nohls<cr>| " Unhighlight Search word
nnoremap <leader>ap :vs ~/vimrc/Plugins.vim<cr>5jYPvi'"+pF'l<C-V>}kk:sort<cr>ZZ:Update<cr> | " Pastes into plugin list from system clipboard and does `:Update`
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
nnoremap <leader>vll :vsplit ~/vimrc/LocalLeaderMapping.vim<cr>zM| " Vertical Split LocalLeaderMapping.vim
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
noremap <leader>so :w<cr>:so $MYVIMRC<cr>zMzA| " sources .vimrc
noremap <leader>sog :w<cr>:so $MYVIMRC<cr>zMzA@:| " source .vimrc and do last command
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
inoremap:
---------
 * `inoremap <C-A>` While in insert mode, press `<C-A>` and it will do mathematics. Ex: `5+3<C-A>`
 * `inoremap <C-P>` Pastes from clipboard

nnoremap:
---------
 * `nnoremap *` Don't move away when you hit the star key
 * `nnoremap :` Switch `:`/`;`
 * `nnoremap ;` Switch `:`/`;`
 * `nnoremap <bs>` Backspace button deletes even in normal mode
 * `nnoremap <c-i>` Move around windows (Not Working)
 * `nnoremap <c-j>` Move around windows (Not Working)
 * `nnoremap <c-k>` Move around windows (Not Working)
 * `nnoremap <c-l>` Move around windows (Not Working)
 * `nnoremap <return>` Enter button returns even in normal mode
 * `nnoremap <silent><A-j>` Alt-J/Alt-K
 * `nnoremap <silent><A-k>` Alt-J/Alt-K
 * `nnoremap <space>` Space button adds space in normal mode
 * `nnoremap v` Pressing `v` now selects entire line.
 * `nnoremap U` Redo
 * `nnoremap Z` Close and save
 * `nnoremap Q` Close without saving
 * `nnoremap zc` Moves cursor to center of screen as you close vimfold
 * `nnoremap zo` Moves cursor to top of screen as you open vimfold
 * `nnoremap {` When searching through blocks, center screen
 * `nnoremap }` When searching through blocks, center screen

noremap:
--------
 * `noremap <F5>` Toggles Undo Tree
 * `noremap H` Right hand shift canvas control
 * `noremap J` Right hand shift canvas control
 * `noremap K` Right hand shift canvas control
 * `noremap L` Right hand shift canvas control

vnoremap:
---------
 * `vnoremap :` Switch `:`/`;`
 * `vnoremap ;` Switch `:`/`;`
 * `vnoremap <` Quick indent in Visual Mode
 * `vnoremap <C-C>` Copies selection into system clipboard
 * `vnoremap v` Press `vv` to quickly get into Visual Block
 * `vnoremap >` Quick indent in Visual Mode

