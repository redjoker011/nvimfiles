""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 888b      88                           8b           d8 88
" 8888b     88                           `8b         d8' ""
" 88 `8b    88                            `8b       d8'
" 88  `8b   88  ,adPPYba,  ,adPPYba,       `8b     d8'   88 88,dPYba,,adPYba,
" 88   `8b  88 a8P_____88 a8"     "8a       `8b   d8'    88 88P'   "88"    "8a
" 88    `8b 88 8PP""""""" 8b       d8        `8b d8'     88 88      88      88
" 88     `8888 "8b,   ,aa "8a,   ,a8"         `888'      88 88      88      88
" 88      `888  `"Ybbd8"'  `"YbbdP"'           `8'       88 88      88      88
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically install vim-plug and run PlugInstall if vim-plug not found
let g:mapleader=","
let g:maplocalleader="<Space>"

" Set modifiable
:set ma

function InstallPlug()
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endfunction

if has('nvim')
  let vim = stdpath('config')
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    call InstallPlug()
  endif
else
  let vim = $HOME . '/.vim'
  if empty(glob('~/.vim/autoload/plug.vim'))
    call InstallPlug()
  endif
end

" So long vundle, we shall now use plug since yarn
" showed me the power of parallel package installation
call plug#begin('~/.vim/bundle')

Plug 'airblade/vim-gitgutter'
Plug 'hardcoreplayers/spaceline.vim'
Plug 'gregsexton/MatchTag'
Plug 'morhetz/gruvbox'
Plug 'lilydjwg/colorizer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'liuchengxu/vista.vim'
Plug 'mhinz/vim-startify'
" Hyper Focus writing limelight + goyo
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/nginx.vim'
Plug 'vim-syntastic/syntastic'
Plug 'wakatime/vim-wakatime'

" Tree Explorer with icon highlight
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/vim-easy-align'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'chrisbra/NrrwRgn'
Plug 'jparise/vim-graphql'
Plug 'fatih/vim-go'
Plug 'tpope/vim-eunuch'

" Snippets compatible with coc-snippets
" https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'

" Coc All da wae
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-solargraph',
  \ 'coc-tailwindcss',
  \ 'coc-tsserver',
  \ 'coc-tslint',
  \ 'coc-eslint',
  \ 'coc-emmet',
  \ 'coc-eslint',
  \ 'coc-ultisnips',
  \ 'coc-vetur',
  \ ]


Plug 'takac/vim-hardtime'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()

" Use Vim settings, rather than Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible
filetype off

set autowrite
set autoread
set history=50
set laststatus=2  " Always display status line
set linespace=2
set nobackup
set nowritebackup
set noswapfile
set ruler         " Show the cursor position all the time
set showcmd       " Display incomplete commands

" Let's enable folding!
set foldenable
set foldmethod=syntax
set foldlevel=1

" Softabs, 2 spaces for Ruby <3
set backspace=2   " Backspace deletes like most programs in insert mode
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround
set smartindent

" Use system clipboard
if $TMUX == ''
  set clipboard+=unnamed
endif

" Fileformat
set fileformat=unix
set fileformats=unix,dos

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Disable the mouse
set mouse=c

" Make it obvious where 80 characters is,
" since a line should not contain more than that
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" Splits and windows
set splitbelow
set splitright

" Enable spell check
set spell

" Save
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>

" Showing syntax highlight group in statusline
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

" Filetype detection, plugins, and indent rules
filetype plugin indent on

" Syntax highlighting
syntax on

" UI Settings
set wildmenu
set t_Co=256
set background=dark
colorscheme gruvbox
" let g:dracula_italic = 1
" let g:airline_theme = 'tomorrow'

" May the force be with you
nnoremap <silent> <Left> :bprev<CR>
nnoremap <silent> <Right> :bnext<CR>
nnoremap <Up> :echo "Use k"<CR>
nnoremap <Down> :echo "Use j"<CR>
" jk is escape
inoremap jk <esc>

set lazyredraw

" http://ideasintosoftware.com/vim-productivity-tips/
set relativenumber

" http://ideasintosoftware.com/history-is-a-tree/
set undofile
set undodir=~/.vim/undodir

vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" http://stackoverflow.com/a/2559262
set scrolloff=3         " 2 lines above/below cursor when scrolling
set showmatch           " show matching bracket (briefly jump)
set showmode            " show mode in status bar (insert/replace/...)
set title               " show file in titlebar
set matchtime=3         " show matching bracket for 0.3 seconds
set matchpairs+=<:>     " specially for html
set hidden              " remember undo after quitting
set confirm             " get a dialog when :q, :w, or :wq fails

" mapping for copying text into clipboard
map <C-c> "+y<CR>
set pastetoggle=<F3>

" Powerline Configuration
set guifont=DroidSansMono\ Nerd\ Font:h11
" let g:Powerline_symbols = 'fancy'

set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
set termencoding=utf-8

" Clear Search Highlight
nnoremap <Leader><space> :nohlsearch<Enter>

" Lets make editing vim config easy as pie

" Open Vim Config
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>

" Source Vim Config
nnoremap <Leader>sv :source %<cr>
