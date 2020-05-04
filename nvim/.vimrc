set nocompatible
filetype off

set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4

set relativenumber
set laststatus=2

" Paneles por defecto abajo y a la derecha
set splitbelow
set splitright

" Sesitive Cases
set ignorecase 

" Enable folding
set foldmethod=indent
set foldlevel=99

call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'gryf/pylint-vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Valloric/YouCompleteMe' , { 'do': './install.py' }
Plug 'powerline/powerline'
" Git
Plug 'tpope/vim-fugitive'

" Python plugins
Plug  'tmhedberg/SimpylFold'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

call plug#end()

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let NERDTreeQuitOnOpen=1

let mapleader=' '

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>n :tabnew
nmap <leader>w :w<CR>
nmap <leader>q :q!<CR>

inoremap <C-S> <Esc>:w<CR>

" folding
nnoremap <leader>f za

syntax enable
filetype plugin indent on
let python_highlight_all=1

" Identado de ficheros
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Espacios en blancos innecesarios
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Configuraciones de Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['pylint']
