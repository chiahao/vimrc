chiahao's MacVim Configuration
==============================

Personal Vim and MacVim configuration.

This configuration was originally based on
[vgod/vimrc](https://github.com/vgod/vimrc) by Tsung-Hsiang (Sean) Chang. It
has since been heavily rewritten for personal MacVim use, including a migration
from pathogen and git submodules to vim-plug.

Current personal changes
------------------------

* Plugin management now uses vim-plug. Plugin working trees are installed under
  `~/.vim/plugged` and are not tracked by git.
* MacVim launched from Finder gets the nvm default Node.js path from `gvimrc`,
  so Node-based plugins can still run after removing the Homebrew Node.js
  formula.
* `Cmd-T` now opens `fzf.vim` file search with `:Files` instead of the old
  Command-T plugin.
* Markdown preview now uses a personal fork of `markdown-preview.nvim`, adding a
  setting that disables idle `CursorHold` refresh while keeping cursor movement
  sync.
* Markdown preview uses a custom highlight CSS based on markdown-preview.nvim's
  bundled `highlight.css`. It only changes diff add/delete text colors, keeping
  the original pink and green backgrounds intact. It intentionally uses
  `mkdp_highlight_css` instead of `mkdp_markdown_css` so the normal Markdown
  page layout and code block backgrounds are not replaced.

ONE-STEP INSTALL
----------------

On a clean machine, download `auto-install.sh`, set `VIMRC_REPO_URL` to this
repository URL, and run it:

     VIMRC_REPO_URL=https://github.com/chiahao/vimrc.git ./auto-install.sh

If this repository is already checked out at `~/.vim`, run:

     ./auto-install.sh

The `VIMRC_REPO_URL=... ./auto-install.sh` syntax works in both zsh and sh. If
it fails, the usual cause is that `~/.vim` already exists and is not this
checkout.


MANUALLY INSTALL
----------------

1. Check out from github

        git clone <this-repository-url> ~/.vim
        cd ~/.vim

2. Install ~/.vimrc and ~/.gvimrc

        ./install-vimrc.sh

3. Install plugins

        vim +PlugInstall +qall

MANUALLY INSTALL ON WINDOWS
---------------------------

Windows is not the primary target of this configuration. If you still want to
use it on Windows, install Vim first and source `vimrc` from your Vim startup
file.

1. Check out from github

        cd C:\Program Files\Vim   (or your installed path to Vim)
        rmdir /s vimfiles         (This deletes your old vim configurations. If you want to keep it, use move instead of rmdir.)
        git clone <this-repository-url> vimfiles

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

* [markdown-preview.nvim](https://github.com/chiahao/markdown-preview.nvim): Markdown preview for Vim and Neovim.

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


Vim Visual Cheat Sheet
----------------------

The following Vim cheat sheets are from the original vgod/vimrc project and
remain useful for Vim built-in motions and commands.

![My Vim Visual Cheat Sheet](http://people.csail.mit.edu/vgod/vim/vim-cheat-sheet-en.png "My Vim Visual Cheat Sheet")

* [Vim Visual Cheat Sheet (PNG)](http://people.csail.mit.edu/vgod/vim/vim-cheat-sheet-en.png)
* [Vim Visual Cheat Sheet (PDF)](http://people.csail.mit.edu/vgod/vim/vim-cheat-sheet-en.pdf)
* [Vim入門圖解 Chinese Ver. (PNG)](http://blog.vgod.tw/wp-content/uploads/2009/12/vim-cheat-sheet-full.png)
* [Vim入門圖解 Chinese Ver. (PDF)](http://blog.vgod.tw/wp-content/uploads/2009/12/vgod-vim-cheat-sheet-full.pdf)

These Vim Visual Cheat Sheets are released under [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).


License
-------

This configuration is based on vgod/vimrc, which is released under
[Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US).

Credits
-------

Original project: [vgod/vimrc](https://github.com/vgod/vimrc) by
Tsung-Hsiang (Sean) Chang.
