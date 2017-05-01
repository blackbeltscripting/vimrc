" Key Mapping:
" Quick Save/Close {{{
" Save and Close
nnoremap Q ZQ
" Close Without Saving
nnoremap Z ZZ
" }}}
" [i]<C-A>: Do Vim Math {{{;
ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>
" }}}
" Better Fold {{{
nnoremap zo zozt
nnoremap zc zczz
" }}}
" Redo {{{
nnoremap U <c-r>
" }}}
" Leader is now ; so move ; to , {{{
nnoremap , ;
" }}}
" Don't Move when you hit the star key {{{
nnoremap * *N
" }}}
" Ctrl-V will go to insert mode and wait for register to paste {{{
" nnoremap <C-V> i<C-R>
 " }}}
" Toggles Undo Tree {{{
noremap <F5> :UndotreeToggle<cr>
 " }}}
" Enter button returns even in normal mode {{{
nnoremap <return> i<return><esc>
 " }}}
" Backspace button deletes even in normal mode {{{
nnoremap <bs> i<bs><esc>l
 " }}}
" Space button adds space in normal mode {{{
nnoremap <space> i<space><esc>l
 " }}}
" Alt-J/Alt-K {{{
nnoremap <silent><A-k> :set paste<CR>m`O<esc>``:set nopaste<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<esc>``:set nopaste<CR>
" }}}
" Copy/Paste {{{
vnoremap <C-C> "+y
inoremap <C-P> <esc>"+p
" }}}
" Enables vim to use the Alt key through gnome-termial {{{
if has('nvim')
    " do nothing because nvim can use the Alt key
else
    let c='a'
    while c <= 'z'
        exec "set <A-".c.">=\e".c
        exec "imap \e".c." <A-".c.">"
        let c = nr2char(1+char2nr(c))
        set ttimeout ttimeoutlen=5
    endwhile
endif
" }}}
" Move around windows (Not Working) {{{
nnoremap <c-j> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-i> <c-w><c-k><c-w>=<c-w>_
nnoremap <c-k> <c-w><c-j><c-w>=<c-w>_
" }}}
" Right hand shift canvas control {{{
noremap H ^
noremap J H48jzt
noremap K H48kzt
noremap L $
" }}}
" Switch Visual modes {{{
" Hitting 'v' in Normal Mode gives you Visual Line
nnoremap v V
" Hitting 'v' in Visual Mode gives you a Visual Block
vnoremap v <C-V>
" Normal visual mode is 'V'
nnoremap V v
" }}}
" Switch ;/: {{{
nnoremap : ;
nnoremap ; :
vnoremap : ;
vnoremap ; :
" }}}
" When searching through blocks, center screen {{{
nnoremap { {zt
nnoremap } }zt
" }}}
" Quick indent in Visual Mode {{{
vnoremap > >gv
vnoremap < <gv
" }}}
" Highlight Next: {{{
" nnoremap <silent> n   n:call HLNext(0.4)<cr>
" nnoremap <silent> N   N:call HLNext(0.4)<cr>
" }}}

" NeoVim Hack issue
" https://github.com/neovim/neovim/issues/2048
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

" Trim white spaces, retab
noremap <leader>r :call Replace()<CR>
command! -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command! -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()

" Save when losing focus
au FocusLost * :silent! wall

" Highlight Under Cursor
" autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
" nnoremap <silent> <F3> :exe "let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>
