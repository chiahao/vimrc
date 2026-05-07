if has("gui_macvim")
   " MacVim launched from Finder does not inherit the interactive shell PATH.
   " Add the nvm default Node.js bin path so Node-based plugins can find node.
   let s:nvm_default_alias = expand('~/.nvm/alias/default')
   if filereadable(s:nvm_default_alias)
      let s:nvm_default_version = trim(readfile(s:nvm_default_alias)[0])
      let s:nvm_node_bin = expand('~/.nvm/versions/node/' . s:nvm_default_version . '/bin')
      if isdirectory(s:nvm_node_bin)
         let $PATH = s:nvm_node_bin . ':/opt/homebrew/bin:' . $PATH
      endif
   endif

   " disable the original Cmd-T (open new tab)
   macmenu &File.New\ Tab key=<nop>
   " map Cmd-T to fzf.vim file search
   map <D-t> :Files<CR>
   set gfn=Osaka-Mono:h16
endif
