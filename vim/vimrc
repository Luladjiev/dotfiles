set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhartington/oceanic-next'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/neocomplete.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'easymotion/vim-easymotion'
call plug#end()

filetype plugin indent on

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

" Window shortcuts
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Buffer shortcuts
nnoremap <leader>bb :ls<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bD :bd!<CR>

" Vim Fugitive shortcuts
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gn :cnext<CR>
nnoremap <leader>gp :cprev<CR>
nnoremap <leader>gN :clast<CR>
nnoremap <leader>gP :cfirst<CR>
nnoremap <leader>gL :Glog -10 -- %<CR>:copen<CR>

" Miscellaneous shortcuts
nnoremap <leader>sc :noh<CR>
nnoremap <leader>jp :%!python -m json.tool<CR>

" Folding
set foldmethod=indent
set nofoldenable
set foldnestmax=5

" Scrolling
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

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

" Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-Space>  pumvisible() ? "" : neocomplete#start_manual_complete()

" Theme
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
set background=dark
colorscheme OceanicNext
