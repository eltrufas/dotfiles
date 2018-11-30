" Install vim-plug (For new installs)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ }

Plug 'marcweber/vim-addon-mw-utils'
Plug 'airblade/vim-rooter'
Plug 'ervandew/supertab'
Plug 'Shougo/neoinclude.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'lilydjwg/colorizer'


Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'lervag/vimtex'
Plug 'lepture/vim-jinja'
Plug 'kovisoft/slimv'
Plug 'cespare/vim-toml'
Plug 'StanAngeloff/php.vim'
Plug 'posva/vim-vue'

Plug 'ayu-theme/ayu-vim'

call plug#end()

set nocompatible
filetype on
set clipboard+=unnamed

filetype plugin indent on
syntax enable
set encoding=utf-8
set fenc=utf-8
set number
set ruler
let mapleader="\<Space>"
let maplocalleader=","
set mouse=a                       " enable mouse support
set visualbell                    " No beeping.

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ }

let g:ale_open_list = 1

nnoremap <F5> :call LanguageClient_contextMenu()<CR>

set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·
set scrolloff=3                   " provide some context when editing
set backspace=indent,eol,start    " allow backspacing over everything in insert mode

set fillchars=vert:\│

set title
set mouse=a
set noshowmode

set list
set listchars=tab:\ \ ,eol:¬,trail:⋅
set showbreak=↪

imap <C-BS> <C-W>

nnoremap <leader><Space> :FZF<enter>

let g:fzf_nvim_statusline = 0 " disable statusline overwriting
tnoremap <Esc> <C-\><C-n>

set t_8f=^[[38;2;%lu;%lu;%lum  " Needed in tmux
set t_8b=^[[48;2;%lu;%lu;%lum  " Ditto
set termguicolors
let ayucolor="dark"
colorscheme ayu
