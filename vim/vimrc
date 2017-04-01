set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'cohama/lexima.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
call vundle#end()            " required
filetype plugin indent on    " required

set nocompatible
set backspace=2
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete command
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set autoread      " Remember last position in file
set clipboard=unnamed
set encoding=utf-8
set cursorline

" Trigger autoread when changing buffers or coming back to vim.
if has("unix")
  au FocusGained,BufEnter * :silent! !
endif

" Case insensitive searching (unless specified)
set ignorecase
set smartcase

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set smartindent

" Numbers
set number
set numberwidth=5
set relativenumber

" Basics
inoremap fd <ESC>
let mapleader = "\<Space>"

" Arrows are unvimlike
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Control shortcuts
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap <leader>bb :ls<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bD :bd!<CR>
nnoremap <leader>sc :noh<CR>
nnoremap <leader>jp :%!python -m json.tool<CR>

" Scrolling
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Auto resize Vim splits to active split
"set winwidth=84
"set winheight=5
"set winminheight=5
"set winheight=999

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'

" Ack to use Silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Font & Styles
if has("gui_running")
  set guioptions=a
  set linespace=1

  if has("gui_gtk3")
    set guifont=Source\ Code\ Pro\ 16
  elseif has("gui_win32")
    set guifont=Source_Code_Pro:h14:cANSI:qDRAFT
  endif
endif

" CtrlP
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|node_modules\|reports\|compiled\|log\|tmp$'
  \ }

" JSHint
let jshint2_read = 1
let jshint2_save = 1

if (has("termguicolors"))
 set termguicolors
endif

" Neocomplete
let g:neocomplete#enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><C-g> neocomplete#undo_completion()

" Theme
syntax enable
set background=dark
colorscheme OceanicNext
