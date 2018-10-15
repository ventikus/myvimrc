call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
call plug#end()


if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = "\<Space>"
imap fd <Esc>
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>p "+p<cr>
set backspace=indent,eol,start
set background=light
colorscheme PaperColor
"colorscheme gruvbox
syntax on
" set tabstop=2
" set softtabstop=2
" set expandtab

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>
set tabstop=4

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

set relativenumber
set showcmd
set cursorline
" filetype indent on
set showmatch
set incsearch           " search as characters are entered
set hlsearch  
set breakindent
nnoremap B ^
nnoremap E $
if has('gui_running')
  set guifont=Iosevka:h12
endif

autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set enc=utf-8
set fileencoding=utf-8
