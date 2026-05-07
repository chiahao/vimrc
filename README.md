vgod's vimrc
============
Author: Tsung-Hsiang (Sean) Chang <vgod@vgod.tw>

Fork me on GITHUB  https://github.com/vgod/vimrc.

ONE-STEP INSTALL
----------------

Use curl (for Mac OS X):

     curl -o - https://raw.githubusercontent.com/vgod/vimrc/master/auto-install.sh | sh

or wget (for most UNIX platforms):

     wget -O - https://raw.githubusercontent.com/vgod/vimrc/master/auto-install.sh | sh


MANUALLY INSTALL
----------------

1. Check out from github

        git clone git://github.com/vgod/vimrc.git ~/.vim
        cd ~/.vim

2. Install ~/.vimrc and ~/.gvimrc

        ./install-vimrc.sh

3. Install plugins

        vim +PlugInstall +qall

MANUALLY INSTALL ON WINDOWS
---------------------------

1. Check out from github

        cd C:\Program Files\Vim   (or your installed path to Vim)
        rmdir /s vimfiles         (This deletes your old vim configurations. If you want to keep it, use move instead of rmdir.)
        git clone git://github.com/vgod/vimrc.git vimfiles

2. Install vimrc. Add the following line at the end of C:\Program Files\Vim\vimrc.

        source $VIM/vimfiles/vimrc

3. Install plugins

        vim +PlugInstall +qall


  
INSTALL & UPGRADE PLUGIN BUNDLES
--------------------------------

Plugins are managed by [vim-plug](https://github.com/junegunn/vim-plug).
The plugin list is in `vimrc`; downloaded plugin working trees live in
`~/.vim/plugged` and are intentionally not tracked by git.

To install plugins:

     vim +PlugInstall +qall

To update plugins:

     vim +PlugUpdate +qall

HOW TO USE
----------

see the "USEFUL SHORTCUTS" section in vimrc to learn my shortcuts.

PLUGINS
-------

* [vim-plug](https://github.com/junegunn/vim-plug): Plugin manager.

* [Nerd Tree](https://github.com/preservim/nerdtree): A tree explorer plugin for navigating the filesystem.

  Useful commands:   
    `:Bookmark [name]` - bookmark any directory as name   
    `:NERDTree [name]` - open the bookmark [name] in Nerd Tree   

* [fzf.vim](https://github.com/junegunn/fzf.vim): File and text search through fzf.

  Useful commands:
    `:Files` opens the file picker.
    `:Rg` searches text with ripgrep when available.

* [lexima.vim](https://github.com/cohama/lexima.vim): Inserts matching bracket, paren, brace or quote.

* [vim-visual-multi](https://github.com/mg979/vim-visual-multi): Multiple selections for Vim.

* [vim-surround](https://github.com/tpope/vim-surround/blob/master/doc/surround.txt): deal with pairs of surroundings.

* [vim-commentary](https://github.com/tpope/vim-commentary): Comment and uncomment code with Vim motions.

* [vim-fugitive](https://github.com/tpope/vim-fugitive): Git integration.

  Useful commands:
    `:Git` opens git status.
    `:Gdiffsplit` opens a git diff split.

* [vim-gitgutter](https://github.com/airblade/vim-gitgutter): Shows changed lines in the sign column.

* [EasyMotion](https://github.com/easymotion/vim-easymotion): An easy way to jump to a word.

  Useful commands:   
    `,,w` forward EasyMotion   
    `,,b` backward EasyMotion   

* [TagBar](http://majutsushi.github.com/tagbar/): browsing the tags of source files ordered by classes.

  Useful commands:    
    `F7` toggles the TagBar

* [ALE](https://github.com/dense-analysis/ale): Asynchronous linting and fixer integration.

* [coc.nvim](https://github.com/neoclide/coc.nvim): Node.js based completion and language server client for Vim.

* [vim-javascript](https://github.com/pangloss/vim-javascript): JavaScript syntax.

* [typescript-vim](https://github.com/leafgarland/typescript-vim): TypeScript syntax.

* [vim-jsx-typescript](https://github.com/peitalin/vim-jsx-typescript): TSX syntax.

* [emmet-vim](https://github.com/mattn/emmet-vim): expanding abbreviation like Emmet.

  Useful commands:   
    `<ctrl-y>,` expand Emmet abbreviation.

* [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim): Markdown preview for Vim and Neovim.

  Useful commands:
    `:MarkdownPreview` opens preview.
    `:MarkdownPreviewStop` stops preview.

Language specific supports
--------------------------

* Restructured Text: `ctrl-u 1~5` inserts Part/Chapter/Section headers
* HTML, JavaScript, TypeScript, Python, CSS, C, C++, Java: use Vim omni-completion or coc.nvim when a language server is configured.
* HTML/XML: End tags and pairs are completed by lexima.vim and emmet-vim.

Other good references
---------------------

* http://amix.dk/vim/vimrc.html
* http://spf13.com/post/perfect-vimrc-vim-config-file


Vim Visual Cheat Sheet
----------------------

I've compiled and plotted a Vim Cheat Sheet for beginners. 
Welcome to download and learn Vim with it.

![My Vim Visual Cheat Sheet](http://people.csail.mit.edu/vgod/vim/vim-cheat-sheet-en.png "My Vim Visual Cheat Sheet")

* [Vim Visual Cheat Sheet (PNG)](http://people.csail.mit.edu/vgod/vim/vim-cheat-sheet-en.png)
* [Vim Visual Cheat Sheet (PDF)](http://people.csail.mit.edu/vgod/vim/vim-cheat-sheet-en.pdf)
* [Vim入門圖解 Chinese Ver. (PNG)](http://blog.vgod.tw/wp-content/uploads/2009/12/vim-cheat-sheet-full.png)
* [Vim入門圖解 Chinese Ver. (PDF)](http://blog.vgod.tw/wp-content/uploads/2009/12/vgod-vim-cheat-sheet-full.pdf)

These Vim Visual Cheat Sheets are released under [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).


License
-------

This vimrc project is released under [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).
