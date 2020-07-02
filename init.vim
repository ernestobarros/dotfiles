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

" Use mouse to copy and paste like PowerShell terminal.
set mouse=a
inoremap <RightMouse> <c-r>+
cnoremap <RightMouse> <c-r>+
nnoremap <RightMouse> "+p
vmap <Esc> "+y

set columns=188 "When opened in explorer. Then give me the Maximized window.
set textwidth=170 wrap "Wrap long comments.
set guicursor=
set noshowmatch
set relativenumber
set hidden
set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
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

" Color theme
" TODO evaluating gruvbox.
" Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'tonsky/firacode'

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

"=====================================================
" Make your Vim/Neovim as smart as VSCode.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Then, use :CocInstall coc-omnisharp to install.
" Recommended plugins for syntax highlighting
Plug 'sheerun/vim-polyglot'
"=====================================================

" fzf is a general-purpose command-line fuzzy finder.
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" ripgrep (rg) recursively searches directories for a regex pattern.
Plug 'burntsushi/ripgrep'

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

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

"=====================================================
" Conquer of Completion
"=====================================================
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-space> coc#refresh()

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart
"=====================================================

"=====================================================
" Choose theme
"=====================================================
" TODO evaluating gruvbox.
" colorscheme dracula
colorscheme gruvbox
" Do not always fancy.
" let g:airline_powerline_fonts = 1

" Change highlight color dracula (TODO looke for better colorscheme)
highlight Visual cterm=bold ctermbg=Blue ctermfg=NONE

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
language nl_NL
language en_US
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
