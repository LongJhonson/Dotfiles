call plug#begin()
Plug 'preservim/NERDTree'
call plug#end()

let g:coc_disable_startupwarning = 1

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set virtualedit+=onemore

:set number relativenumber
:set nu rnu

syntax on

set term=screen-256color
set t_ut=

syntax enable
colorscheme monokai

set visualbell

inoremap jj <ESC>

set backspace=indent,eol,start

set ttyfast

set laststatus=2

" Display options
set showmode
set showcmd


" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

let mapleader = ","
noremap <leader>w :w<cr>
noremap <leader>s :CocSearch 
noremap <leader>f :Files<cr>
noremap <leader>d :NERDTreeToggle<cr>
noremap <leader>q :bd<cr>

set hidden
nnoremap <C-A> :bprev<cr>
nnoremap <C-S> :bnext<cr>
nnoremap <C-J> 5j
nnoremap qq :q<cr>
" noremap <C-A> gT
" noremap <C-S> gt

vnoremap <C-C> "+y<cr>
vnoremap <C-V> "+p<cr>
vnoremap aa :q<cr>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'hashivim/vim-terraform' " Terraform syntax and commands
Plug 'neoclide/coc.nvim' , { 'tag': '*', 'branch' : 'release' }
Plug 'vim-airline/vim-airline'
Plug 'eslint/eslint'
Plug 'preservim/nerdtree'
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'atom/fuzzy-finder'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
Plug 'ap/vim-buftabline'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

let g:airline_powerline_fonts = 1
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
:imap ii <Esc>
" Terraform config
let g:terraform_fmt_on_save=1
" NERDTreeConfig
let g:NERDTreeQuitOnOpen=1
