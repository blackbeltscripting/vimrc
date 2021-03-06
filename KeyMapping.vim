" ============
" Key Mapping:
" ============

" Insert Mode: {{{
" ----------------
inoremap <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>| " Do mathematics. Ex: `5+3`<kbd>\<C-A\></kbd>
inoremap <C-P> <esc>"+p|                       " Quick paste from clipboard
" }}}
" Normal Mode: {{{
" ----------------
nnoremap * *N|                                                   " Prevents cursor from moving when hitting the star key.
nnoremap ; :|                                                    " Enter Command Line
nnoremap : ;|                                                    " Does next <kbd>f</kbd>/<kbd>F</kbd>/<kbd>t</kbd>/<kbd>T</kbd>
nnoremap <BS> i<bs><esc>l|                                       " Delete without needing to go to insert mode
nnoremap <C-H> :TmuxNavigateLeft<cr>                             " Move to left split
nnoremap <C-J> <c-w>h|                                           " Move to down split
nnoremap <C-K> <c-w><c-j><c-w>=<c-w>_|                           " Move to up split
nnoremap <C-L> :TmuxNavigateRight<cr>                            " Move move to right split
nnoremap <RETURN> i<return><esc>|                                " Adds a new line without needing to go to insert mode
nnoremap <SILENT><A-J> :set paste<CR>m`o<esc>``:set nopaste<CR>| " Puts a new line below without moving cursor
nnoremap <SILENT><A-K> :set paste<CR>m`O<esc>``:set nopaste<CR>| " Puts a new line above without moving cursor
nnoremap <SPACE> i<space><esc>l|                                 " Space button adds space in normal mode
nnoremap v V|                                                    " Visual line as <kbd>v</kbd>. Hitting <kbd>v</kbd> again should enter into visual block.
nnoremap zo zozt                                                 " Move fold to top after doing the `zo` command.
nnoremap U <c-r>|                                                " Redo
nnoremap Z ZZ|                                                   " Close and save
nnoremap Q ZQ|                                                   " Close without saving
" }}}
" Normal, Visual, Select, Operator-pending: {{{
" ---------------------------------------------
noremap <F5> :UndotreeToggle<cr>| " Toggles Undo Tree
noremap H ^|                      " Go to first nonwhite space of line
noremap J H48jzt|                 " Page Down (assuming we have 48 lines)
noremap K H48kzt|                 " Page Up (assuming we have 48 lines)
noremap L $|                      " Go to EOL
" }}}
" Visual Mode: {{{
" ----------------
vnoremap ; :|       " Enter Command Line
vnoremap : ;|       " Does next <kbd>f</kbd>/<kbd>F</kbd>/<kbd>t</kbd>/<kbd>T</kbd>
vnoremap < <gv|     " Quick indent
vnoremap <C-C> "+y| " Copies selection into system clipboard
vnoremap v <C-V>|   " Press <kbd>vv</kbd> to quickly get into Visual Block
vnoremap > >gv|     " Quick indent
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
