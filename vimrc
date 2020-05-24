" For installing from scratch, use the following steps:
" - Copy this file as ~/.vimrc
" - Create directories:
"       mkdir -p ~/.vim/{userdir,autoload}
" - Install plug.vim to ~/.vim/autoload/
"       (https://github.com/junegunn/vim-plug/wiki/tutorial)
" - Launch vim and run: :PlugInstall

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'

" Themes and Colorschemes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gryf/wombat256grf'
Plug 'rainglow/vim'

call plug#end()

" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

colorscheme wombat256grf
" set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

" let g:ctrlp_use_caching = 0

" <Ctal-\> is used by the system so let's remap Esc in terminal
:tnoremap <Esc> <C-\><C-n>
noremap <Leader>t :NERDTree <Enter>
