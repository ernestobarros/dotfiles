" ========================================
"       Coded/Modified by Ernesto Barros
"       Sat 05/30/2020
" ========================================

" Yank to clipboard
set clipboard=unnamed

nnoremap <c-s> :w<CR>

let mapleader = ","
let maplocalleader = ","

" Buffer
nnoremap <c-tab> :bnext<CR>
nnoremap <c-s-tab> :bprevious<CR>
" Close buffer
nnoremap <leader>bd :bdelete<CR>

" *****************************************************************************
" ====================================================
" Global configuration
" ====================================================
syntax on

set guicursor=
set noshowmatch
set relativenumber
set hidden
set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Search
set nohlsearch
" set hlsearch     " highlight the search result
set ignorecase   " Case insensitive search
set incsearch    " Find as I type during the search
set smartcase    " Case sensitive only if search contains uppercase letter.
" Highlight
map <c-h> :nohl<CR>

set termguicolors
set scrolljump=5                    " Lines to scroll when cursor leaves screen
set scrolloff=3                     " Minimum lines to keep above and below cursor

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

highlight ColorColumn ctermbg=0 guibg=lightgrey
set colorcolumn=81                  " Set the 80 character column
set cursorline                      " Highlight the current line

" Invisible characters
set list
set listchars=tab:»»,trail:•,nbsp:~     " Display invisible characters


call plug#begin('~/.vim/plugged')

" Vim-Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Dracula theme
Plug 'dracula/vim'

" Easy Motion : faster move in vim
" Press <Leader><Leader> and the letter that you want to go
Plug 'easymotion/vim-easymotion'

" Git
Plug 'tpope/vim-fugitive'
" Surround
Plug 'tpope/vim-surround'
" unimpaired.vim: Pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" repeat.vim: enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'
" speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'tpope/vim-speeddating'
" Simplified clipboard functionality for Vim.
" Plug 'svermeulen/vim-easyclip'

"=====================================================
"   Under review - https://github.com/jdhao/nvim-config/blob/master/plugins.vim
"=====================================================
" Modern matchit implementation
Plug 'andymass/vim-matchup'
"=====================================================


" Comment functions so powerful—no comment necessary.
Plug 'scrooloose/nerdcommenter'
" CtrlP
Plug 'ctrlpvim/ctrlp.vim'
" Numbers.vim
Plug 'myusuf3/numbers.vim'
" Always load the vim-devicons as the very last one.
Plug 'ryanoasis/vim-devicons'

call plug#end()
" *****************************************************************************

"=====================================================
" Choose theme
"=====================================================
colorscheme dracula
" Do not always fancy.
" let g:airline_powerline_fonts = 1

" Smarter tab line
" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" Separators can be configured independently for the tabline, so here is how you can define "straight" tabs:
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Numbers.vim
let g:enable_numbers = 1
let g:numbers_exclude = ['unite', 'startify', 'w3m', 'vimshell', 'tagbar', 'gundo', 'minibufexpl', 'nerdtree']
:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

"=====================================================
" Spellchecking
"=====================================================
map <F9> <Esc>:silent setlocal spell! spelllang=en<CR>
map <F10> <Esc>:silent setlocal spell! spelllang=nl<CR>
set spellsuggest=best

" ******************************************************************************
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()
" ******************************************************************************

