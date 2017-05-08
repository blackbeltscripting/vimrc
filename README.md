My Vim Config Files
===================


Description
-----------
Most of my configuration is stored here.  Only highly sensitive work will not be stored online.

This readme (most likely) contains an up-to-date list of all Plug-ins, Vim Functions, and Key and Leader Maps.

Enjoy! \m/(~.^)\m/


Plugins
-------
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
---------
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
-----------
 * `ino <C-A>` While in insert mode, press <C-A> and it will do mathematics. Ex: 5+3<C-A>
 * `ino <C-P>` Pastes from clipboard
 * `nno *` Don't move away when you hit the star key
 * `nno ,` Repeat t/T/f/F
 * `nno U` Redo
 * `nno Z` Close with saving (ZQ)
 * `nno zc` Moves cursor to center of screen as you close vimfold
 * `nno zo` Moves cursor to top of screen as you open vimfold
 * `vno <C-C>` Copies selection into system clipboard


Leader Mapping
--------------
 * `;` Adds semicolon at EOL
 * `<space>` Unhighlight Search word
 * `c` Saves, then sends command to tmux
 * `cm` Sends make command to runner and focuses the pane
 * `conc` Concatonates inside parentheses using '.' delimiter
 * `h` Resize Split to the left
 * `j` Maximize Splits
 * `k` Restore Splits
 * `l` Resize Split to the right
 * `mh` Move word to the left
 * `ml` Move word to the right
 * `o` Open Startify
 * `q` Vertical split LeaderMapping.vim and dumps macro at reg q
 * `s` Saves file
 * `so` sources .vimrc
 * `soz` sources .vimrc and closes
 * `src` Open .vimrc
 * `tab` Retabs the entire pane
 * `tl` Toggle relativenumber
 * `ts` Toggle spell
 * `tw` Toggle wrap
 * `u` Open URI in chrome
 * `vF` Vertical Split FZF
 * `v` Vertical Split Startify [Default]
 * `vf` Vertical Split Functions.vim
 * `vh` Vertical Split help of current word in pointer
 * `vk` Vertical Split KeyMapping.vim
 * `vl` Vertical Split LeaderMapping.vim
 * `vp` Vertical Split Plugins.vim
 * `vs` Vertical Split .vimrc
 * `wh` Swap Window Left
 * `wj` Swap Window Down
 * `wk` Swap Window Up
 * `wl` Swap Window Right
 * `{` Make vim fold around block and closes it


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
 * `ino <C-A>` While in insert mode, press <C-A> and it will do mathematics. Ex: 5+3<C-A>
 * `ino <C-P>` Pastes from clipboard
 * `nno *` Don't move away when you hit the star key
 * `nno ,` Repeat t/T/f/F
 * `nno U` Redo
 * `nno Z` Close with saving (ZQ)
 * `nno zc` Moves cursor to center of screen as you close vimfold
 * `nno zo` Moves cursor to top of screen as you open vimfold
 * `vno <C-C>` Copies selection into system clipboard
 * `;` Adds semicolon at EOL
 * `<space>` Unhighlight Search word
 * `c` Saves, then sends command to tmux
 * `cm` Sends make command to runner and focuses the pane
 * `conc` Concatonates inside parentheses using '.' delimiter
 * `h` Resize Split to the left
 * `j` Maximize Splits
 * `k` Restore Splits
 * `l` Resize Split to the right
 * `mh` Move word to the left
 * `ml` Move word to the right
 * `o` Open Startify
 * `q` Vertical split LeaderMapping.vim and dumps macro at reg q
 * `s` Saves file
 * `so` sources .vimrc
 * `soz` sources .vimrc and closes
 * `src` Open .vimrc
 * `tab` Retabs the entire pane
 * `tl` Toggle relativenumber
 * `ts` Toggle spell
 * `tw` Toggle wrap
 * `u` Open URI in chrome
 * `vF` Vertical Split FZF
 * `v` Vertical Split Startify [Default]
 * `vf` Vertical Split Functions.vim
 * `vh` Vertical Split help of current word in pointer
 * `vk` Vertical Split KeyMapping.vim
 * `vl` Vertical Split LeaderMapping.vim
 * `vp` Vertical Split Plugins.vim
 * `vs` Vertical Split .vimrc
 * `wh` Swap Window Left
 * `wj` Swap Window Down
 * `wk` Swap Window Up
 * `wl` Swap Window Right
 * `{` Make vim fold around block and closes it
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
 * `ino <C-A>` While in insert mode, press <C-A> and it will do mathematics. Ex: 5+3<C-A>
 * `ino <C-P>` Pastes from clipboard
 * `nno *` Don't move away when you hit the star key
 * `nno ,` Repeat t/T/f/F
 * `nno U` Redo
 * `nno Z` Close with saving (ZQ)
 * `nno zc` Moves cursor to center of screen as you close vimfold
 * `nno zo` Moves cursor to top of screen as you open vimfold
 * `vno <C-C>` Copies selection into system clipboard
 * `;` Adds semicolon at EOL
 * `<space>` Unhighlight Search word
 * `c` Saves, then sends command to tmux
 * `cm` Sends make command to runner and focuses the pane
 * `conc` Concatonates inside parentheses using '.' delimiter
 * `h` Resize Split to the left
 * `j` Maximize Splits
 * `k` Restore Splits
 * `l` Resize Split to the right
 * `mh` Move word to the left
 * `ml` Move word to the right
 * `o` Open Startify
 * `q` Vertical split LeaderMapping.vim and dumps macro at reg q
 * `s` Saves file
 * `so` sources .vimrc
 * `soz` sources .vimrc and closes
 * `src` Open .vimrc
 * `tab` Retabs the entire pane
 * `tl` Toggle relativenumber
 * `ts` Toggle spell
 * `tw` Toggle wrap
 * `u` Open URI in chrome
 * `vF` Vertical Split FZF
 * `v` Vertical Split Startify [Default]
 * `vf` Vertical Split Functions.vim
 * `vh` Vertical Split help of current word in pointer
 * `vk` Vertical Split KeyMapping.vim
 * `vl` Vertical Split LeaderMapping.vim
 * `vp` Vertical Split Plugins.vim
 * `vs` Vertical Split .vimrc
 * `wh` Swap Window Left
 * `wj` Swap Window Down
 * `wk` Swap Window Up
 * `wl` Swap Window Right
 * `{` Make vim fold around block and closes it
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
 * `ino <C-A>` While in insert mode, press <C-A> and it will do mathematics. Ex: 5+3<C-A>
 * `ino <C-P>` Pastes from clipboard
 * `nno *` Don't move away when you hit the star key
 * `nno ,` Repeat t/T/f/F
 * `nno U` Redo
 * `nno Z` Close with saving (ZQ)
 * `nno zc` Moves cursor to center of screen as you close vimfold
 * `nno zo` Moves cursor to top of screen as you open vimfold
 * `vno <C-C>` Copies selection into system clipboard
 * `;` Adds semicolon at EOL
 * `<space>` Unhighlight Search word
 * `c` Saves, then sends command to tmux
 * `cm` Sends make command to runner and focuses the pane
 * `conc` Concatonates inside parentheses using '.' delimiter
 * `h` Resize Split to the left
 * `j` Maximize Splits
 * `k` Restore Splits
 * `l` Resize Split to the right
 * `mh` Move word to the left
 * `ml` Move word to the right
 * `o` Open Startify
 * `q` Vertical split LeaderMapping.vim and dumps macro at reg q
 * `s` Saves file
 * `so` sources .vimrc
 * `soz` sources .vimrc and closes
 * `src` Open .vimrc
 * `tab` Retabs the entire pane
 * `tl` Toggle relativenumber
 * `ts` Toggle spell
 * `tw` Toggle wrap
 * `u` Open URI in chrome
 * `vF` Vertical Split FZF
 * `v` Vertical Split Startify [Default]
 * `vf` Vertical Split Functions.vim
 * `vh` Vertical Split help of current word in pointer
 * `vk` Vertical Split KeyMapping.vim
 * `vl` Vertical Split LeaderMapping.vim
 * `vp` Vertical Split Plugins.vim
 * `vs` Vertical Split .vimrc
 * `wh` Swap Window Left
 * `wj` Swap Window Down
 * `wk` Swap Window Up
 * `wl` Swap Window Right
 * `{` Make vim fold around block and closes it
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
 * `ino <C-A>` While in insert mode, press <C-A> and it will do mathematics. Ex: 5+3<C-A>
 * `ino <C-P>` Pastes from clipboard
 * `nno *` Don't move away when you hit the star key
 * `nno ,` Repeat t/T/f/F
 * `nno U` Redo
 * `nno Z` Close with saving (ZQ)
 * `nno zc` Moves cursor to center of screen as you close vimfold
 * `nno zo` Moves cursor to top of screen as you open vimfold
 * `vno <C-C>` Copies selection into system clipboard
 * `;` Adds semicolon at EOL
 * `<space>` Unhighlight Search word
 * `c` Saves, then sends command to tmux
 * `cm` Sends make command to runner and focuses the pane
 * `conc` Concatonates inside parentheses using '.' delimiter
 * `h` Resize Split to the left
 * `j` Maximize Splits
 * `k` Restore Splits
 * `l` Resize Split to the right
 * `mh` Move word to the left
 * `ml` Move word to the right
 * `o` Open Startify
 * `q` Vertical split LeaderMapping.vim and dumps macro at reg q
 * `s` Saves file
 * `so` sources .vimrc
 * `soz` sources .vimrc and closes
 * `src` Open .vimrc
 * `tab` Retabs the entire pane
 * `tl` Toggle relativenumber
 * `ts` Toggle spell
 * `tw` Toggle wrap
 * `u` Open URI in chrome
 * `vF` Vertical Split FZF
 * `v` Vertical Split Startify [Default]
 * `vf` Vertical Split Functions.vim
 * `vh` Vertical Split help of current word in pointer
 * `vk` Vertical Split KeyMapping.vim
 * `vl` Vertical Split LeaderMapping.vim
 * `vp` Vertical Split Plugins.vim
 * `vs` Vertical Split .vimrc
 * `wh` Swap Window Left
 * `wj` Swap Window Down
 * `wk` Swap Window Up
 * `wl` Swap Window Right
 * `{` Make vim fold around block and closes it
