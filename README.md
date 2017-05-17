My Vim Config Files
===================


Description
===========
Most of my configuration is stored here.  Only highly sensitive work will not be stored online.

This readme (most likely) contains an up-to-date list of all plugins, functions, key mappings, and leader mappings.

This page is kind of sensitive starting at 'Table of Contents' and below. I highly advise not trying to edit anything after 'Description'.

Enjoy! \m/(~.^)\m/


Table of Contents
=================
<!-- vim-markdown-toc GFM -->
* [Plugins](#plugins)
* [Functions](#functions)
* [Key Mapping](#key-mapping)
    * [inoremap:](#inoremap)
    * [nnoremap:](#nnoremap)
    * [noremap:](#noremap)
    * [vnoremap:](#vnoremap)
* [Leader Mapping](#leader-mapping)
    * [nnoremap:](#nnoremap-1)
    * [normap:](#normap)
    * [vnoremap:](#vnoremap-1)

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
 * [vim-dotoo](https://github.com/dhruvasagar/vim-dotoo)
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
 * [vim-sort-motion](https://github.com/christoomey/vim-sort-motion)
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
 * `MoveLeft()` Move selection to the left.
 * `MoveRight()` Move selection to the right.
 * `PopulateReadme()` Gets all Plugins, Functions, and Leader Maps and places them inside the README file. Then automatically commits changes to github.
 * `Replace()` Replaces word in all buffers (I think).
 * `Resolve_mode()` Find out if type is linewise, blockwise, or motion.
 * `Search()` Searches with Ag.
 * `ShowSpaces()` Show extra white spaces before EOL.
 * `SpaceTabRetab()` ReTabs and removes the spaces from file.
 * `TrimSpaces()` Removes extra white spaces before EOL.
 * `Unobscure()` ... in alpha stage.
 * `Update()` Upgrades Vim-Plug, Updates Plugins, Fires Populate Readme
 * `VimFold()` Automatically folds some files.
 * `YankAndPutMapping()` Gets Key, Leader, or LocalLeader and populates it to README.md file.
 * `YankAndPutVariables()` Gets variables and populates it to README.md file.


Key Mapping
===========
inoremap:
---------
 * <kbd>\<C-A\></kbd> While in insert mode, press `<C-A>` and it will do mathematics. Ex: `5+3<C-A>`
 * <kbd>\<C-P\></kbd> Pastes from clipboard

nnoremap:
---------
 * <kbd>*</kbd> Don't move away from word the first time
 * <kbd>:</kbd> Enter Command Line
 * <kbd>;</kbd> Does next `f/F/t/T`
 * <kbd>\<bs\></kbd> Delete without needing to go to insert mode
 * <kbd>\<c-i\></kbd> Move around windows
 * <kbd>\<c-j\></kbd> Move around windows
 * <kbd>\<c-k\></kbd> Move around windows
 * <kbd>\<c-l\></kbd> Move around windows
 * <kbd>\<return\></kbd> Adds a new line without needing to go to insert mode
 * <kbd>\<silent\>\<A-j\></kbd> Puts a new line below without moving cursor
 * <kbd>\<silent\>\<A-k\></kbd> Puts a new line above without moving cursor
 * <kbd>\<space\></kbd> Space button adds space in normal mode
 * <kbd>v</kbd> Visual line as 'v'. Hitting 'v' again should enter into visual block.
 * <kbd>U</kbd> Redo
 * <kbd>Z</kbd> Close and save
 * <kbd>Q</kbd> Close without saving

noremap:
--------
 * <kbd>\<F5\></kbd> Toggles Undo Tree
 * <kbd>H</kbd> Go to first nonwhite space of line
 * <kbd>J</kbd> Page Down (assuming we have 48 lines)
 * <kbd>K</kbd> Page Up (assuming we have 48 lines)
 * <kbd>L</kbd> Go to EOL

vnoremap:
---------
 * <kbd>:</kbd> Enter Command Line
 * <kbd>;</kbd> Does next `f/F/t/T`
 * <kbd>\<</kbd> Quick indent in Visual Mode
 * <kbd>\<C-C\></kbd> Copies selection into system clipboard
 * <kbd>v</kbd> Press `vv` to quickly get into Visual Block
 * <kbd>\></kbd> Quick indent in Visual Mode


Leader Mapping
==============
nnoremap:
---------
 * <kbd>\<leader\>;</kbd> Adds semicolon at EOL
 * <kbd>\<leader\>\<space\></kbd> Unhighlight Search word
 * <kbd>\<leader\>ap</kbd> Pastes into plugin list from system clipboard and does `:Update` function
 * <kbd>\<leader\>c</kbd> Saves, then sends command to tmux
 * <kbd>\<leader\>cm</kbd> Sends make command to runner and focuses the pane
 * <kbd>\<leader\>conc</kbd> Concatonates inside parentheses using '.' delimiter
 * <kbd>\<leader\>h</kbd> Resize Split to the left
 * <kbd>\<leader\>j</kbd> Maximize Splits
 * <kbd>\<leader\>k</kbd> Restore Splits
 * <kbd>\<leader\>l</kbd> Resize Split to the right
 * <kbd>\<leader\>mh</kbd> Move word to the left
 * <kbd>\<leader\>ml</kbd> Move word to the right
 * <kbd>\<leader\>o</kbd> Open Startify
 * <kbd>\<leader\>s</kbd> Saves file
 * <kbd>\<leader\>src</kbd> Open .vimrc
 * <kbd>\<leader\>tab</kbd> Retabs the entire pane
 * <kbd>\<leader\>tl</kbd> Toggle relativenumber
 * <kbd>\<leader\>ts</kbd> Toggle spell
 * <kbd>\<leader\>tw</kbd> Toggle wrap
 * <kbd>\<leader\>v</kbd> Vertical Split Startify [Default]
 * <kbd>\<leader\>vF</kbd> Vertical Split FZF
 * <kbd>\<leader\>vf</kbd> Vertical Split Functions.vim
 * <kbd>\<leader\>vh</kbd> Vertical Split help of current word in pointer
 * <kbd>\<leader\>vk</kbd> Vertical Split KeyMapping.vim
 * <kbd>\<leader\>vl</kbd> Vertical Split LeaderMapping.vim
 * <kbd>\<leader\>vll</kbd> Vertical Split LocalLeaderMapping.vim
 * <kbd>\<leader\>vp</kbd> Vertical Split Plugins.vim
 * <kbd>\<leader\>vs</kbd> Vertical Split .vimrc
 * <kbd>\<leader\>wh</kbd> Swap Window Left
 * <kbd>\<leader\>wj</kbd> Swap Window Down
 * <kbd>\<leader\>wk</kbd> Swap Window Up
 * <kbd>\<leader\>wl</kbd> Swap Window Right
 * <kbd>\<leader\>ym</kbd> Yanks from mark `t` to mark `b`
 * <kbd>\<leader\>{</kbd> Make vim fold around block and closes it

normap:
-------
 * <kbd>\<leader\>so</kbd> sources .vimrc
 * <kbd>\<leader\>sog</kbd> source .vimrc and do last command
 * <kbd>\<leader\>soz</kbd> sources .vimrc and closes
 * <kbd>\<leader\>u</kbd> Open URI in chrome

vnoremap:
---------
 * <kbd>\<leader\>;</kbd> In visual mode, it will do `:@\"`


