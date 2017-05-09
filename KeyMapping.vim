" ============
" Key Mapping:
" ============

" Insert No Remap: {{{
" --------------------
inoremap <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>| " While in insert mode, press `<C-A>` and it will do mathematics. Ex: `5+3<C-A>`
inoremap <C-P> <esc>"+p| " Pastes from clipboard
" }}}
" Normal No Remap: {{{
" --------------------
nnoremap * *N| " Don't move away when you hit the star key
nnoremap : ;| " Switch `:`/`;`
nnoremap ; :| " Switch `:`/`;`
nnoremap <bs> i<bs><esc>l| " Backspace button deletes even in normal mode
nnoremap <c-i> <c-w><c-k><c-w>=<c-w>_| " Move around windows (Not Working)
nnoremap <c-j> <c-w>h| " Move around windows (Not Working)
nnoremap <c-k> <c-w><c-j><c-w>=<c-w>_| " Move around windows (Not Working)
nnoremap <c-l> <c-w>l| " Move around windows (Not Working)
nnoremap <return> i<return><esc>| " Enter button returns even in normal mode
nnoremap <silent><A-j> :set paste<CR>m`o<esc>``:set nopaste<CR>| " Alt-J/Alt-K
nnoremap <silent><A-k> :set paste<CR>m`O<esc>``:set nopaste<CR>| " Alt-J/Alt-K
nnoremap <space> i<space><esc>l| " Space button adds space in normal mode
nnoremap v V| " Pressing `v` now selects entire line.
nnoremap U <c-r>| " Redo
nnoremap Z ZZ| " Close and save
nnoremap Q ZQ| " Close without saving
nnoremap zc zczz| " Moves cursor to center of screen as you close vimfold
nnoremap zo zozt| " Moves cursor to top of screen as you open vimfold
nnoremap { {zt| " When searching through blocks, center screen
nnoremap } }zt| " When searching through blocks, center screen
" }}}
" No_Remap: {{{
" -------------
noremap <F5> :UndotreeToggle<cr>| " Toggles Undo Tree
noremap H ^| " Right hand shift canvas control
noremap J H48jzt| " Right hand shift canvas control
noremap K H48kzt| " Right hand shift canvas control
noremap L $| " Right hand shift canvas control
" }}}
" Visual No Remap: {{{
" --------------------
vnoremap : ;| " Switch `:`/`;`
vnoremap ; :| " Switch `:`/`;`
vnoremap < <gv| " Quick indent in Visual Mode
vnoremap <C-C> "+y| " Copies selection into system clipboard
vnoremap v <C-V>| " Press `vv` to quickly get into Visual Block
vnoremap > >gv| " Quick indent in Visual Mode
" }}}

" Deprecated: {{{
" nnoremap <silent> n   n:call HLNext(0.4)<cr>| " Highlight Next:
" NeoVim Hack issue
" https://github.com/neovim/neovim/issues/2048
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
" Enables vim to use the Alt key through gnome-termial {{{
if has('nvim')
    " do nothing because nvim can use the Alt key
else
    let c='a'
    while c <= 'z'
        exec "set <A-".c.">=\e".c
        exec "imap \e".c." <A-".c.">"
        let c = nr2char(
        1+char2nr(c))
        set ttimeout ttimeoutlen=5
    endwhile
endif
" }}}
" Trim white spaces, retab
noremap <leader>r :call Replace()<CR>
command! -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command! -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
" Save when losing focus
au FocusLost * :silent! wall
" Highlight Under Cursor
" autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
" nnoremap <silent> <F3> :exe "let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>
" }}}
