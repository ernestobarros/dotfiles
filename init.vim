let g:python3_host_prog='C:\Program Files\Python36\python.exe'
let g:python_host_prog='C:\Program Files\Python27\python.exe'

set nocompatible " use vim defaults
filetype off " filetype needs to be off before Vundle


call plug#begin('~/.local/share/nvim/plugged')

" This plugin alternates between relative numbering (relativenumber) and       
" absolute numbering (number).                                                 
Plug 'myusuf3/numbers.vim'                                                     

Plug 'w0rp/ale'
Plug 'nelstrom/vim-visual-star-search'
Plug 'mileszs/ack.vim'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'duff/vim-bufonly'
Plug 'gregsexton/MatchTag'
Plug 'sheerun/vim-polyglot'
Plug 'kristijanhusak/vim-hybrid-material'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'callmekohei/deoplete-fsharp'

Plug 'dyng/ctrlsf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/goyo.vim'

Plug 'mhartington/oceanic-next'
" The main feature is that all search matches are highlighted in real time, as
" you are typing out your regex.
Plug 'haya14busa/incsearch.vim'

Plug 'ryanoasis/vim-devicons'

call plug#end()

" deoplete-fsharp --------------------------------------------------------------------{{{

" autocmd BufNewFile,BufRead *.fs,*.fsi,*.fsx set filetype=fsharp
" autocmd BufNewFile,BufRead * call deoplete#enable()
" let g:deoplete#max_list = 1000
" set previewheight=5

"}}}

" Sensible --------------------------------------------------------------------{{{

" The vimrc file (part) for Visual Studio VsVim extension.
" Use CTRL-Q to do what CTRL-V used to do
nnoremap <c-q> <c-v> 
" Rename word under cursor for the entire file
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left>
" Yank to clipboard
set clipboard=unnamed
" Vim with Powershell
set shell=powershell

" AutoReLoad init.vim
" Auto apply modification to vimrc
if has("autocmd")
    autocmd bufwritepost ~/AppData/Local/nvim/init.vim source ~/AppData/Local/nvim/init.vim
endif

"}}}


" incsearch --------------------------------------------------------------------{{{

nnoremap n nzz
nnoremap N Nzz

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)zz
map N  <Plug>(incsearch-nohl-N)zz
map *  <Plug>(incsearch-nohl-*)zz
map #  <Plug>(incsearch-nohl-#)zz
map g* <Plug>(incsearch-nohl-g*)zz
map g# <Plug>(incsearch-nohl-g#)zz

map / <Plug>(incsearch-forward)\v
map ? <Plug>(incsearch-backward)\v
map g/ <Plug>(incsearch-stay)\v

"}}}

" ================ plugins setups ========================

" set guifont=DroidSansMonoPLNerd:h16
" set guifont=FiraCode:h6
set encoding=utf8
let g:airline_powerline_fonts = 1                                               "Enable powerline fonts

"autocmd FileType nerdtree setlocal nolist
"autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=AL
" =============== vim-devicons config ===================
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:WebDevIconsNerdTreeAfterGlyphPadding=''
let g:WebDevIconsNerdTreeGitPluginForceVAlign=0
set conceallevel=3
"let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
"set ambiwidth=double


" set guifont=DroidSansMonoPLNerd:h12
" set encoding=utf8
" let g:airline_powerline_fonts = 1                                               "Enable powerline fonts

" the amount of space to use after the glyph character (default ' ')
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" set macligatures
" step 2: font configuration
" " These are the basic settings to get the font to work (required):
" set guifont=DroidSansMonoPLNerd:h12
" set encoding=utf-8
" " required if using https://github.com/bling/vim-airline
" let g:airline_powerline_fonts=1


" General
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set fillchars+=vert:\ 
let mapleader=" "
set number
set ignorecase
set noswapfile
set completeopt=longest,menuone

" Theme
set background=dark
colorscheme OceanicNext

" Airline
" let g:airline_left_sep= '░'
" let g:airline_right_sep= '░'
let g:airline_theme='alduin'

