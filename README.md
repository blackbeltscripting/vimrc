vimrc for Arty // Web Design and Programming
============


Goal
----------------
To download this repo and hit install and have our vimrc working inside any box.

This WAS originally based on brooky-yen's vimrc (https://github.com/brooky-yen/vimrc)

Then was changed by hightman's vimrc (https://github.com/hightman/vimrc)

Now adapted for my work.

Author: Eric Ghiraldello <ericg@arty-web-design.com>


Requisites
----------------
The distribution is designed to work with Vim >= 7.2.

The distribution also requires ack, ctags, git, ruby and rake. I recommend using the GUI version of VIM (gvim on Linux and Windows, MacVim on OSX) for some plugin only support GUI version (e.g. Command-T). You can [download MacVim here](https://github.com/b4winckler/macvim/downloads).


Useful vim Plugins (maybe)Included
----------------
 * [vim-autoclose](https://github.com/Townk/vim-autoclose)
 * [ack.vim](https://github.com/mileszs/ack.vim)
 * [vim-bufexplorer](https://github.com/thisivan/vim-bufexplorer)
 * [vim-easytag](https://github.com/xolox/vim-easytags)
 * [tagbar](https://github.com/majutsushi/tagbar)
 * [tagbar-phpctags](https://github.com/techlivezheng/tagbar-phpctags)
 * [nerdtree](https://github.com/scrooloose/nerdtree)
 * [nerdcommenter.git](https://github.com/scrooloose/nerdcommenter.git)
 * [YankRing.vim.git](https://github.com/vim-scripts/YankRing.vim.git)
 * [vim-fugitive](https://github.com/tpope/vim-fugitive)
 * [vim-repeat](https://github.com/tpope/vim-repeat)
 * [vim-surround](https://github.com/tpope/vim-surround)
 * [vim-eunuch](https://github.com/tpope/vim-eunuch)
 * [vim-markdown](https://github.com/tpope/vim-markdown)
 * [vim-endwise](https://github.com/tpope/vim-endwise)
 * [xmledit.git](https://github.com/sukima/xmledit.git)
 * [matchit.zip](https://github.com/vim-scripts/matchit.zip)
 * [vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
 * [neocomplcache](https://github.com/Shougo/neocomplcache)
 * [neosnippet](https://github.com/Shougo/neosnippet)
 * [OmniCppComplete](https://github.com/vim-scripts/OmniCppComplete)
 * [syntastic](https://github.com/scrooloose/syntastic)
 * [vim-php-cs-fixer](https://github.com/stephpy/vim-php-cs-fixer)
 * [vim-php-namespace](https://github.com/arnaud-lb/vim-php-namespace)
 * [phpcomplete.vim](https://github.com/shawncplus/phpcomplete.vim)
 * [php.vim](https://github.com/shawncplus/php.vim)
 * [PDV--phpDocumentor-for-Vim](https://github.com/vim-scripts/PDV--phpDocumentor-for-Vim)
 * [vim-html5-fix](https://github.com/concise/vim-html5-fix)
 * [vim-haml](https://github.com/tpope/vim-haml)
 * [vim-javascript](https://github.com/pangloss/vim-javascript)
 * [vim-jquery](https://github.com/itspriddle/vim-jquery)
 * [php-search-doc](https://github.com/erikfercak/php-search-doc)
 * [vim-jquery-doc](https://github.com/lucapette/vim-jquery-doc)
 * [ctrlp.vim](https://github.com/kien/ctrlp.vim)


INSTALL
-------

1. clone this vimrc
    ```
    git clone https://github.com/blackbeltscripting/vimrc.git
    ```

2. (Don't...)Run the install script(yet)
    ```
    sh vimrc/install.sh
    ```

3. Finished! Enjoy it :-)


Conventions
------------

* Backup enabled, the BAK file is saved as `~/.vim/bak/$NAME~`

* Swap file is moved to `~/.vim/swap/$NAME.swp`

* Undo Directors is moved to `~/.vim/undodir/`

* Shourtcuts, the `<leader>` key is `,`
  - `,s` Saves & sources
  - `,r` Replace the current word in all opened files
  - `,<space>` Clear search highlighting
