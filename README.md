vimrc for Eric Ghiraldello
==========================


Goal
----
To download this repo and hit install and have our vimrc working inside any box.

This WAS originally based on brooky-yen's vimrc (https://github.com/brooky-yen/vimrc)

Then was changed by hightman's vimrc (https://github.com/hightman/vimrc)

Now adapted for my work.

Author: Eric Ghiraldello <ericg@arty-web-design.com>


Plugins
-------
 * [ag.vim](https://github.com/rking/ag.vim)
 * [auto-pairs](https://github.com/jiangmiao/auto-pairs)
 * [ctrlp.vim](https://github.com/kien/ctrlp.vim)
 * [emmet-vim](https://github.com/mattn/emmet-vim)
 * [fzf](https://github.com/junegunn/fzf)
 * [syntastic](https://github.com/scrooloose/syntastic)
 * [ultisnips](https://github.com/SirVer/ultisnips)
 * [undotree](https://github.com/mbbill/undotree)
 * [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
 * [vim-airline](https://github.com/bling/vim-airline)
 * [vim-coloresque](https://github.com/gorodinskiy/vim-coloresque)
 * [vim-commentary](https://github.com/tpope/vim-commentary)
 * [vim-dirdiff](https://github.com/will133/vim-dirdiff)
 * [vim-easygrep](https://github.com/dkprice/vim-easygrep)
 * [vim-fugitive](https://github.com/tpope/vim-fugitive)
 * [vim-misc](https://github.com/xolox/vim-misc)
 * [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
 * [vim-notes](https://github.com/xolox/vim-notes)
 * [vim-paste-operator](https://github.com/blackbeltscripting/vim-paste-operator)
 * [vim-repeat](https://github.com/tpope/vim-repeat)
 * [vim-snippets](https://github.com/honza/vim-snippets)
 * [vim-srcery](https://github.com/roosta/vim-srcery)
 * [vim-startify](https://github.com/mhinz/vim-startify)
 * [vim-surround](https://github.com/tpope/vim-surround)
 * [vim-sync](https://github.com/eshion/vim-sync)
 * [vim-system-copy](https://github.com/christoomey/vim-system-copy)
 * [vim-tmux-focus-events](https://github.com/tmux-plugins/vim-tmux-focus-events)
 * [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
 * [vim-tmux-runner](https://github.com/christoomey/vim-tmux-runner)
 * [vim-visual-increment](https://github.com/triglav/vim-visual-increment)
 * [vimux](https://github.com/benmills/vimux)


Leader Mapping
--------------
 * `<space>` Unhighlight Search word
 * `{` Make vim fold around block and closes it
 * `;` Adds semicolon at EOL
 * `c` Saves, then sends command to tmux
 * `cm` Sends make command to runner and focuses the pane
 * `conc` Concatonates inside parentheses using '.' delimiter
 * `ml` Move word to the right
 * `q` Opens this file and dumps macro at reg q
 * `s` Saves file
 * `so` sources .vimrc
 * `soz` sources .vimrc and closes
 * `src` Open .vimrc
 * `tab` Retabs the entire pane
 * `u` Open URI in chrome
 * `v` Open Startify [Default]
 * `vF` Open FZF
 * `vf` Open Functions.vim
 * `vh` Open help of <C-WORD>
 * `vk` Open KeyMapping.vim
 * `vl` Open LeaderMapping.vim
 * `vp` Open Plugins.vim
 * `vs` Open .vimrc


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
-----------

* Backup enabled, the BAK file is saved as `~/.vim/bak/$NAME~`

* Swap file is moved to `~/.vim/swap/$NAME.swp`

* Undo Directors is moved to `~/.vim/undodir/`

* Shourtcuts, the `<leader>` key is `,`
  - `,s` Saves & sources
  - `,r` Replace the current word in all opened files
  - `,<space>` Clear search highlighting
