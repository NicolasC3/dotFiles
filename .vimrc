" VIM config file upstream url : https://www.gitlab-enseeiht/ncatoni/vim


"---------------------------Plugins install---------------------------"

" Check vim plug install and syncs plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

autocmd VimEnter *
			\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\|   PlugInstall --sync | q
			\| endif

"---------------------------------------------------------------------"


"---------------------------Custom settings---------------------------"

" Overide vim sensible bundle :
runtime! plugin/sensible.vim


set mouse=a
set number relativenumber
set cc=81
hi ColorColumn ctermbg=lightgrey guibg=lightgrey
syntax on
set softtabstop=0 noexpandtab
set tabstop=4
set shiftwidth=4
set nocompatible 

"---------------------------------------------------------------------"
