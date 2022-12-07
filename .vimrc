"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=$HOME/.vim/bundles/repos/github.com/Shougo/dein.vim

    let s:dein_path = expand('~/.vim/bundles')
    let s:dein_repo_path= s:dein_path . '/repo/github.com/Shougo/dein.vim'

    " Required:
    if dein#load_state(s:dein_path)
      call dein#begin(s:dein_path)

    let g:config_dir = s:dein_path . '/userconfig'
    let s:toml       = g:config_dir . '/plugin.toml'
    let s:lazy_toml  = g:config_dir . '/plugin_lazy.toml'

    call dein#load_toml(s:toml,     {'lazy': 0})
    call dein#load_toml(s:lazy_toml,{'lazy': 1})

    call dein#end()
    call dein#save_state()
  endif

    " Required:
    filetype plugin indent on
    syntax enable

    if dein#check_install()
      call dein#install()
    endif

    "End dein Scripts-------------------------

runtime! config/init/*.vim
runtime! config/plugins-config/*.vim

