
" Dein Setup
"
" Don't touch
" 
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/anevaidya/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/anevaidya/.vim/bundles')
  call dein#begin('/Users/anevaidya/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/anevaidya/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('chriskempson/base16-vim')
  call dein#add('scrooloose/nerdtree')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"Base-16
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif



"-------Colors
colorscheme base16-default-dark
syntax enable

"-------Spaces and Tabs

set tabstop=4 "number of visual spaces per Tab
set softtabstop=4 "number of spaces in tab when editing
set expandtab " tabs are spaces

"-------UI Config

set number "line numbers on
set showcmd "show command in bottom bar

"set cursorline "highlight current line

filetype indent plugin on "detect filetype and load appropriate plugins and indent files
set wildmenu "visual autocomplete for paths
set lazyredraw "prevent unnecessary screen redraws
set showmatch "match brackets

