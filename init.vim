" ========================================
"       Coded/Modified by Ernesto Barros
"         Date Sun. 23th June 2018
" ========================================

let g:python3_host_prog='C:\Program Files\Python36\python.exe'
let g:python_host_prog='C:\Program Files\Python27\python.exe'

call plug#begin('~/.local/share/nvim/plugged')

" Vim-Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Dracula theme
Plug 'dracula/vim'

" OmniSharp
" Plug 'OmniSharp/omnisharp-roslyn'
Plug 'OmniSharp/omnisharp-vim'


" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'tpope/vim-dispatch'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

"	Search : Pairs of handy bracket mappings.
"	Examples
" *[a*     |:previous|
" *]q*     |:cnext|
Plug 'tpope/vim-unimpaired'

" NERDCommenter : Better comments in vim
Plug 'scrooloose/nerdcommenter'

" NERDTree
Plug 'scrooloose/nerdtree'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'

" Numbers.vim
Plug 'myusuf3/numbers.vim'

" Surround
Plug 'tpope/vim-surround'

" Always load the vim-devicons as the very last one.
Plug 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call plug#end()             " required
syntax enable               " required

" ====================================================
" Global configuration
" ====================================================

set autowrite                       " Save automatically all the buffers in vim
set backup
set colorcolumn=81                  " Set the 80 character column
set cursorline                      " Highlight the current line
set encoding=utf-8

let g:airline_powerline_fonts = 1   " Enable powerline fonts

set hidden                          " Any buffer can be hidden
set history=1000                    " Set a huge history
set linespace=0                     " No extra spaces between rows
set nojoinspaces                    " Prevents inserting two spaces after punctuation on a join (J)
set path+=**                        " fuzzy matching
set relativenumber                  " set the number in vim
set scrolljump=5                    " Lines to scroll when cursor leaves screen
set scrolloff=3                     " Minimum lines to keep above and below cursor
set showmatch                       " Show current brackets
set splitbelow                      " Puts new split windows to the bottom of the current
set splitright                      " Puts new vsplit windows to the right of the current
set wildmenu                        " Show list instead of just completing
set wildmode=list:longest,full      " Command <Tab> completion, list matches, then longest common part, then all.
set winminheight=0                  " Windows can be 0 line height

" Folding
"	set foldenable          " Auto fold code
"	set foldmethod=syntax   " Fold are defined by syntax highlighting

" Indentation
" Don't enable smarindent or cindent with filetype plugin indent on
filetype plugin indent on   " Indentation based on filetype
set autoindent              " Does not interfere with other indentation settings

" Invisible characters
set list
set listchars=tab:»»,trail:•,nbsp:~     " Display invisible characters

" Netrw
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

" Search
set hlsearch     " highlight the search result
set ignorecase   " Case insensitive search
set incsearch    " Find as I type during the search
set smartcase    " Case sensitive only if search contains uppercase letter.

" Tabulation and spaces
set expandtab            " Show spaces instead of tabs
set shiftwidth=4         " columns per <<
set softtabstop=4        " spaces per tab
set tabstop=4            " columns per tabs

" General
set termguicolors
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set fillchars+=vert:\
set number
set ignorecase
set noswapfile
set completeopt=longest,menuone

" Completely disable italic text
" let g:dracula_italic=1

" Terminal
" Color palette
let g:terminal_color_0 = '#000000'
let g:terminal_color_1 = '#ff5555'
let g:terminal_color_2 = '#50fa7b'
let g:terminal_color_3 = '#f1fa8c'
let g:terminal_color_4 = '#bd93f9'
let g:terminal_color_5 = '#ff79c6'
let g:terminal_color_6 = '#8be9fd'
let g:terminal_color_7 = '#bfbfbf'
let g:terminal_color_8 = '#4d4d4d'
let g:terminal_color_9 = '#ff6e67'
let g:terminal_color_10 = '#5af78e'
let g:terminal_color_11 = '#f4f99d'
let g:terminal_color_12 = '#caa9fa'
let g:terminal_color_13 = '#ff92d0'
let g:terminal_color_14 = '#9aedfe'
let g:terminal_color_15 = '#e6e6e6'

" Vim directories
set backupdir=~/.local/share/nvim/backup//
set directory=~/.local/share/nvim/swap//
set viewdir=~/.local/share/nvim/views//

" Wrapping
set formatoptions-=t             " Keep my textwidth setting
set textwidth=0                  " Word wrap without line break
set wrapmargin=0                 " Word wrap without line break
set whichwrap=b,s,h,l,<,>,[,]    " Backspace and cursor keys wrap too
set wrap linebreak               " Set wrapping with soft wrap (set wm=2 => hard wrap)

" AutoReLoad init.vim
" Auto apply modification to vimrc
if has("autocmd")
    autocmd bufwritepost ~/AppData/Local/nvim/init.vim source ~/AppData/Local/nvim/init.vim
endif

" Vim with Powershell
" set shell=powershell

" The vimrc file (part) for Visual Studio VsVim extension.
" Use CTRL-Q to CTRL-V
nnoremap <c-q> <c-v>

"=====================================================
" Keymap configuration
"=====================================================

" Yank to clipboard
set clipboard=unnamed

let mapleader = " "
let maplocalleader = " "

" Shortcuts
nmap <silent> <Space><Tab> <Esc>/<++><Enter>:nohl<Enter>"_c4l

" Buffer
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>
nmap <leader>bf :bfirst<CR>
nmap <leader>bd :bdelete<CR>

" Highlight
map <C-h> :nohl<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>


" ====================================================
" Plugins configuration
" ====================================================

" Git
" Useful git help
" Instead of reverting the cursor to the last position in the buffer, we set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Numbers.vim
let g:enable_numbers = 1
let g:numbers_exclude = ['unite', 'startify', 'w3m', 'vimshell', 'tagbar', 'gundo', 'minibufexpl', 'nerdtree']
:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


"=====================================================
" Spellchecking
"=====================================================

map <F9> <Esc>:silent setlocal spell! spelllang=en<CR>
map <F10> <Esc>:silent setlocal spell! spelllang=nl<CR>
set spellsuggest=best


"=====================================================
" Theme
"=====================================================

" GUI settings
if (has("gui_running"))
"   set guifont=Fira\ Mono\ 10
    set guioptions-=m    " remove menu bar
    set guioptions-=T    " remove toolbar
    set guioptions-=r    " remove right-hand scroll bar
    set guioptions-=L    " remove left-hand scroll bar
endif

" Use GUI colors in terminal
if (has("termguicolors"))
    set termguicolors
endif

" Set the full color compatibility for vim and terminal
syntax enable


"=====================================================
" More fun with macros
" google: You don’t need more than one cursor in vim
"=====================================================
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
"=====================================================


"=====================================================
" DevIcons
"=====================================================
" DevIcons font adjustements (could not get Fira font to work properly)
" ./ginit.vim for the gui font
set guifont=DroidSansMono\ NF:h18
" For the dots try:
autocmd FileType nerdtree setlocal nolist
let g:airline_powerline_fonts=1
let g:WebDevIconsUnicodeDecorateFolderNodes=0
" For spacing you can adjust with:
let g:WebDevIconsNerdTreeAfterGlyphPadding = '	'
let g:WebDevIconsNerdTreeGitPluginForceVAlign=0

"=====================================================
" Choose theme
"=====================================================
colorscheme dracula
set background=dark
" colorscheme PaperColor
" set background=light


"=====================================================
" OmniSharp 
"=====================================================

" OmniSharp won't work without this setting
filetype plugin on

" Set the path to the roslyn server
" let g:OmniSharp_server_path = 'C:\tools\OmniSharp\omnisharp.http-win-x64\OmniSharp.exe'
let g:OmniSharp_server_path = 'C:\tools\OmniSharp\omnisharp-roslyn\artifacts\publish\OmniSharp.Http.Driver\win7-x64\OmniSharp.exe'

" Set the type lookup function to use the preview window instead of echoing it
"let g:OmniSharp_typeLookupInPreview = 1

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 1

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview

" Fetch full documentation during omnicomplete requests.
" There is a performance penalty with this (especially on Mono).
" By default, only Type/Method signatures are fetched. Full documentation can
" still be fetched when you need it with the :OmniSharpDocumentation command.
"let g:omnicomplete_fetch_full_documentation = 1

" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
set previewheight=5

" Syntastic
" Get code issues and syntax errors
let g:syntastic_cs_checkers = ['code_checker']

augroup omnisharp_commands
    autocmd!

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <buffer> <F5> :wa!<CR>:OmniSharpBuild<CR>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <buffer> <Leader>b :wa!<CR>:OmniSharpBuildAsync<CR>
    " Automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    " Cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <buffer> <Leader>x  :OmniSharpFixIssue<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <Leader>rl :OmniSharpReloadSolution<CR>
nnoremap <Leader>cf :OmniSharpCodeFormat<CR>
" Load the current .cs file to the nearest project
nnoremap <Leader>tp :OmniSharpAddToProject<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Add syntax highlighting for types and interfaces
nnoremap <Leader>th :OmniSharpHighlightTypes<CR>

" Enable snippet completion
" let g:OmniSharp_want_snippet=1

" let g:OmniSharp_selector_ui = 'unite'  " Use unite.vim
" let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
" let g:OmniSharp_selector_ui = 'fzf'    " Use fzf.vim
" let g:OmniSharp_selector_ui = ''       " Use vim - command line, quickfix etc.

