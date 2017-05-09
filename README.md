My Vim Config Files
===================


Description
===========
Most of my configuration is stored here.  Only highly sensitive work will not be stored online.

This readme (most likely) contains an up-to-date list of all Plug-ins, Vim Functions, and Key and Leader Maps.

Enjoy! \m/(~.^)\m/


<!-- vim-markdown-toc GFM -->
* [Plugins](#plugins)
* [Functions](#functions)
* [Key Mapping](#key-mapping)
    * [Insert No Remap:](#insert-no-remap)
    * [Normal No Remap:](#normal-no-remap)
    * [No_Remap:](#no_remap)
    * [Visual No Remap:](#visual-no-remap)
    * [Normal No Remap:](#normal-no-remap-1)
    * [No_Remap:](#no_remap-1)
    * [Visual No Remap:](#visual-no-remap-1)
    * [Normal No Remap:](#normal-no-remap-2)
    * [No_Remap:](#no_remap-2)
    * [Visual No Remap:](#visual-no-remap-2)
* [Leader Mapping](#leader-mapping)
    * [Normal No Remap:](#normal-no-remap-3)
    * [No_Remap:](#no_remap-3)
    * [Visual No Remap:](#visual-no-remap-3)
    * [No_Remap:](#no_remap-4)
    * [Visual No Remap:](#visual-no-remap-4)
    * [No_Remap:](#no_remap-5)
    * [Visual No Remap:](#visual-no-remap-5)

<!-- vim-markdown-toc -->


Plugins
=======
 * [ag.vim](https://github.com/rking/ag.vim)
 * [auto-pairs](https://github.com/jiangmiao/auto-pairs)
 * [ctrlp.vim](https://github.com/kien/ctrlp.vim)
 * [emmet-vim](https://github.com/mattn/emmet-vim)
 * [fzf](https://github.com/junegunn/fzf)
 * [python-mode](https://github.com/python-mode/python-mode)
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
 * [vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc)
 * [vim-markdown](https://github.com/plasticboy/vim-markdown)
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


Functions
=========
 * `Base64Decode()` Decodes a Base64 String and pastes result.
 * `Col80()` Fires a vertical line if cursor reaches over the 80th column.
 * `Concatonate()` Concatonates inside parentheses and pastes result.
 * `ExecuteMacroOverVisualRange()` Don't remember what this does...
 * `GetFunctionName()` Prints word before the '(' in buffer.
 * `HandleURL()` Opens URL/URI
 * `Install()` Upgrades Plug Install, Does Plug Install, Populate Readme
 * `MoveLeft()` Move selection to the left.
 * `MoveRight()` Move selection to the right.
 * `PopulateReadme()` Gets all Plugins, Functions, and Leader Maps and places them inside the README file.
 * `Replace()` Replaces word in all buffers (I think).
 * `Resolve_mode()` Find out if type is linewise, blockwise, or motion.
 * `Search()` Searches with Ag.
 * `ShowSpaces()` Show extra white spaces before EOL.
 * `SpaceTabRetab()` ReTabs and removes the spaces from file.
 * `TrimSpaces()` Removes extra white spaces before EOL.
 * `Unobscure()` ... in alpha stage.
 * `VimFold()` Automatically folds some files.


Key Mapping
===========
Insert No Remap:
----------------
 * `inoremap <C-A>` While in insert mode, press `<C-A>` and it will do mathematics. Ex: `5+3<C-A>`
 * `inoremap <C-P>` Pastes from clipboard

Normal No Remap:
----------------
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

No_Remap:
---------
 * `noremap <F5>` Toggles Undo Tree
 * `noremap H` Right hand shift canvas control
 * `noremap J` Right hand shift canvas control
 * `noremap K` Right hand shift canvas control
 * `noremap L` Right hand shift canvas control

Visual No Remap:
----------------
 * `vnoremap :` Switch `:`/`;`
 * `vnoremap ;` Switch `:`/`;`
 * `vnoremap <` Quick indent in Visual Mode
 * `vnoremap <C-C>` Copies selection into system clipboard
 * `vnoremap v` Press `vv` to quickly get into Visual Block
 * `vnoremap >` Quick indent in Visual Mode

Normal No Remap:
----------------
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

No_Remap:
---------
 * `noremap <F5>` Toggles Undo Tree
 * `noremap H` Right hand shift canvas control
 * `noremap J` Right hand shift canvas control
 * `noremap K` Right hand shift canvas control
 * `noremap L` Right hand shift canvas control

Visual No Remap:
----------------
 * `vnoremap :` Switch `:`/`;`
 * `vnoremap ;` Switch `:`/`;`
 * `vnoremap <` Quick indent in Visual Mode
 * `vnoremap <C-C>` Copies selection into system clipboard
 * `vnoremap v` Press `vv` to quickly get into Visual Block
 * `vnoremap >` Quick indent in Visual Mode

Normal No Remap:
----------------
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

No_Remap:
---------
 * `noremap <F5>` Toggles Undo Tree
 * `noremap H` Right hand shift canvas control
 * `noremap J` Right hand shift canvas control
 * `noremap K` Right hand shift canvas control
 * `noremap L` Right hand shift canvas control

Visual No Remap:
----------------
 * `vnoremap :` Switch `:`/`;`
 * `vnoremap ;` Switch `:`/`;`
 * `vnoremap <` Quick indent in Visual Mode
 * `vnoremap <C-C>` Copies selection into system clipboard
 * `vnoremap v` Press `vv` to quickly get into Visual Block
 * `vnoremap >` Quick indent in Visual Mode


Leader Mapping
==============
Normal No Remap:
----------------
 * `nnoremap <leader>;` Adds semicolon at EOL
 * `nnoremap <leader><space>` Unhighlight Search word
 * `nnoremap <leader>c` Saves, then sends command to tmux
 * `nnoremap <leader>cm` Sends make command to runner and focuses the pane
 * `nnoremap <leader>conc` Concatonates inside parentheses using '.' delimiter
 * `nnoremap <leader>h` Resize Split to the left
 * `nnoremap <leader>j` Maximize Splits
 * `nnoremap <leader>k` Restore Splits
 * `nnoremap <leader>l` Resize Split to the right
 * `nnoremap <leader>mh` Move word to the left
 * `nnoremap <leader>ml` Move word to the right
 * `nnoremap <leader>o` Open Startify
 * `nnoremap <leader>q` Vertical split LeaderMapping.vim and dumps macro at reg q
 * `nnoremap <leader>s` Saves file
 * `nnoremap <leader>src` Open .vimrc
 * `nnoremap <leader>tab` Retabs the entire pane
 * `nnoremap <leader>tl` Toggle relativenumber
 * `nnoremap <leader>ts` Toggle spell
 * `nnoremap <leader>tw` Toggle wrap
 * `nnoremap <leader>v` Vertical Split Startify [Default]
 * `nnoremap <leader>vF` Vertical Split FZF
 * `nnoremap <leader>vf` Vertical Split Functions.vim
 * `nnoremap <leader>vh` Vertical Split help of current word in pointer
 * `nnoremap <leader>vk` Vertical Split KeyMapping.vim
 * `nnoremap <leader>vl` Vertical Split LeaderMapping.vim
 * `nnoremap <leader>vp` Vertical Split Plugins.vim
 * `nnoremap <leader>vs` Vertical Split .vimrc
 * `nnoremap <leader>wh` Swap Window Left
 * `nnoremap <leader>wj` Swap Window Down
 * `nnoremap <leader>wk` Swap Window Up
 * `nnoremap <leader>wl` Swap Window Right
 * `nnoremap <leader>ym` Yanks from mark `t` to mark `b`
 * `nnoremap <leader>{` Make vim fold around block and closes it

No_Remap:
---------
 * `noremap <leader>so` sources .vimrc
 * `noremap <leader>soz` sources .vimrc and closes
 * `noremap <leader>u` Open URI in chrome

Visual No Remap:
----------------
 * `vnoremap <leader>;` In visual mode, it will do `:@\"`

No_Remap:
---------
 * `noremap <leader>so` sources .vimrc
 * `noremap <leader>soz` sources .vimrc and closes
 * `noremap <leader>u` Open URI in chrome

Visual No Remap:
----------------
 * `vnoremap <leader>;` In visual mode, it will do `:@\"`

No_Remap:
---------
 * `noremap <leader>so` sources .vimrc
 * `noremap <leader>soz` sources .vimrc and closes
 * `noremap <leader>u` Open URI in chrome

Visual No Remap:
----------------
 * `vnoremap <leader>;` In visual mode, it will do `:@\"`


