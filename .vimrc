"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ylecuyer/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ylecuyer/.vim/bundles')
  call dein#begin('/home/ylecuyer/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ylecuyer/.vim/bundles/repos/github.com/Shougo/dein.vim')

  call dein#add('tpope/vim-rails')
  call dein#add('keith/rspec.vim')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/nerdtree')
  call dein#add('kien/ctrlp.vim')
  call dein#add('nelstrom/vim-blackboard')
  call dein#add('tpope/vim-fugitive')
  call dein#add('wakatime/vim-wakatime')
  call dein#add('ntpeters/vim-better-whitespace')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

set nowrap

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

let mapleader = ","

colorscheme blackboard

let g:test#ruby#rspec#executable = 'source ~/.bash_profile && rvm gemset use engagement_console && rspec'
let g:strip_whitespace_on_save = 1

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TestNearest<CR>
nmap <F4> :TestFile<CR>
nmap <F12> :Gblame<CR>
