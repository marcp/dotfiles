" Ensure that our plugins work properly
set nocompatible

" Use vundle to handle plugins
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Github repos
Bundle 'adimit/prolog.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'chriskempson/base16-vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'danchoi/ri.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'ervandew/screen'
Bundle 'ervandew/supertab'
Bundle 'fs111/pydoc.vim'
Bundle 'gg/python.vim'
Bundle 'godlygeek/tabular'
Bundle 'guns/vim-clojure-static'
Bundle 'int3/vim-extradite'
Bundle 'jcf/vim-latex'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/zencoding-vim'
Bundle 'mileszs/ack.vim'
Bundle 'NSinopoli/paredit.vim'
Bundle 'NSinopoli/yaml-vim'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'Raimondi/delimitMate'
Bundle 'rosenfeld/conque-term'
Bundle 'scrooloose/syntastic'
Bundle 'sjbach/lusty'
Bundle 'sjl/gundo.vim'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-foreplay'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'vim-scripts/matchparenpp'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/slimv.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'xolox/vim-lua-ftplugin'

" Enable detection, plugins, and indenting in one step
filetype plugin indent on

" Turn syntax highlighting on
syntax on

" Set the <Leader> for combo commands
let mapleader = ","

" Change ctrlp to use ,t
let g:ctrlp_map = '<leader>t'

" Have ctrlp use the directory we're currently in
let g:ctrlp_working_path_mode = 0

" Use fancy symbols
let g:Powerline_symbols = 'fancy'

" Set Taglist width
let Tlist_WinWidth = 50

" Use ag instead of ack - https://github.com/ggreer/the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Colors for RainbowParentheses
let g:rbpt_colorpairs = [
    \ ['brown',       '#268bd2'],
    \ ['Darkblue',    '#2aa198'],
    \ ['darkgray',    '#859900'],
    \ ['darkgreen',   '#6c71c4'],
    \ ['darkcyan',    '#d75f00'],
    \ ['darkred',     '#fdf6e3'],
    \ ['darkmagenta', '#b58900'],
    \ ['brown',       '#cb4b16'],
    \ ['gray',        '#586e75'],
    \ ['black',       '#dc322f'],
    \ ]

" SLIMV settings
let g:slimv_swank_cmd = '! xterm -e sbcl --load /home/nick/.vim/bundle/slimv/slime/start-swank.lisp &'

" Set color scheme
set background=dark
"colorscheme base16-railscasts
colorscheme Tomorrow-Night

" Hide buffers instead of closing them
set hidden

" Ignore case when searching
set ignorecase
" Ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase

" Show line numbers relative to cursor
set relativenumber

" Save undo history
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

" Enable CTRL-A/CTRL-X to work on octal and hex numbers, as well as characters
set nrformats=octal,hex,alpha

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Disable swap files and backups
set nobackup
set nowritebackup
set noswapfile

" Write contents of the file, if it has been modified, on buffer exit
set autowrite

" Improve smoothness of redrawing (indicates a fast terminal connection)
" set ttyfast

" Use UTF-8 as the default buffer encoding
set encoding=utf-8

" Underline the current line, for quick orientation
set cursorline

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" Always show what mode we're currently editing in
set showmode

" Highlight 80th column
set cc=80

" Jump 5 lines when running out of screen real estate
set scrolljump=5

" Keep 3 lines off the edges of the screen when scrolling
set scrolloff=3

" Use menu to show command-line completion (in 'full' case)
set wildmenu

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full

" Ignore files
set wildignore+=.git
set wildignore+=/**/node_modules/**,/**/vendor

" Remember things between sessions
"
" '20  - remember marks for 20 previous files
" \"80 - save 80 lines for each register
" :200  - remember 200 items in command-line history
" %    - remember the buffer list (if vim started without a file arg)
" n    - set name of viminfo file
set viminfo='20,\"80,:200,%,n~/.viminfo

" Cache clojure class path
set viminfo+=!

set history=200

" Search/replace "globally" (on a line) by default
set gdefault

" Use incremental searching
set incsearch

" Do not highlight search results
set nohlsearch

" Show line and column number of cursor position in status window
set ruler
set laststatus=2

" Editing settings

" Convert tabs to 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Allow backspacing over everything
set backspace=indent,eol,start

" Word wrap
set nowrap
set textwidth=0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Show current git branch
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Disable folding
set nofoldenable

" Set font
set gfn=Inconsolata-dz\ 10

" Disable bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Disable scroll binding
set noscrollbind

" Split horizontal windows below current window
set splitbelow

" Easily edit the vimrc file with ,ev
nmap <leader>ev :e $MYVIMRC<CR>

" Map ConqueTermSplit to ,cz
nmap <leader>cz :ConqueTermSplit zsh<CR>

" Map K to show man pages using ConqueTerm
map K :<C-U>call ConqueMan()<CR>
ounmap K

" Scroll through command history without needing to use the arrow keys
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Easier CtrlP commands
nmap <leader>r :CtrlPBuffer<CR>
nmap <leader>m :CtrlPMRUFiles<CR>

" Indent cursor in block after {[( characters
inoremap {<CR> {<CR>}<C-O>O
inoremap [<CR> [<CR>]<C-O>O
inoremap (<CR> (<CR>)<C-O>O

" Map Gundo to ,u
nnoremap <leader>u :GundoToggle<CR>

" Remap filetab controls
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-t> :tabnew<CR>
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt

" Remap buffer resize
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

" Visual shifting
vnoremap < <gv
vnoremap > >gv

" Bubble lines
nmap <C-A-k> [e
nmap <C-A-j> ]e
vmap <C-A-k> [egv
vmap <C-A-j> ]egv

" map <Alt-p> and <Alt-P> to paste below/above and reformat
nnoremap <A-P> P'[v']=
nnoremap <A-p> p'[v']=

" map ,f to display all lines with keyword under cursor and ask which one to jump to
nmap ,f [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Yank/paste to the OS clipboard with ,y and ,p
nmap <leader>y "+y
nmap <leader>Y "+yy
nmap <leader>p "+p
nmap <leader>P "+P

" Alignment mappings
nmap <leader>a= :Tab /=><CR>
vmap <leader>a= :Tab /=><CR>
nmap <leader>a: :Tab /:<CR>
vmap <leader>a: :Tab /:<CR>
nmap <leader>a- :Tab /=<CR>
vmap <leader>a- :Tab /=<CR>

" Jump to matching pairs easily with Tab
nnoremap <Tab> %
vnoremap <Tab> %

" No longer need to press the Shift key for commands
nnoremap ; :

" Press ; twice to get original functionality
noremap ;; ;

" Alt-x/z deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><A-x> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-z> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Horizontal split for ri.vim
nnoremap <leader>d :call ri#OpenSearchPrompt(0)<cr>

" Auto-select text that was just pasted in
nnoremap <leader>v V`]

" Vertically split a window and go to it (requires "set splitbelow")
nnoremap <leader>S <C-w>s

" Vertically split a window and go to it
nnoremap <leader>s <C-w>v<C-w>l

" Easily move between vertical splits
nnoremap H <C-w>h
nnoremap L <C-w>l

" Ack - betterthangrep.com
nnoremap <leader>z :Ack

" Sorts CSS (content between the braces)
nmap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>

fun! <SID>StripTrailingWhitespaces()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfun

" Autostrip trailing whitespace
autocmd BufWritePre *.* :call <SID>StripTrailingWhitespaces()

" Opens man pages using ConqueTerm
fun! ConqueMan()
    let cmd = &keywordprg . ' '
    if cmd ==# 'man ' || cmd ==# 'man -s '
        if v:count > 0
            let cmd .= v:count . ' '
        else
            let cmd = 'man '
        endif
    endif
    let cmd .= expand('<cword>')
    execute 'ConqueTermSplit' cmd
endfun

" Don't display annoying popup every time a file changes
autocmd FileChangedShell * echohl WarningMsg | echo "File changed shell." | echohl None

" Go back to the position the cursor was on the last time this file was edited
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif

" Enable folding without the use of markers
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" Don't use delimitmate with .clj
au FileType clojure let b:delimitMate_autoclose = 0

" Toggle RainbowParentheses automatically
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Gvim settings
if has("gui_running")
    " Remove menu bar
    set guioptions-=m

    " Remove toolbar
    set guioptions-=T

    " Remove scrollbar
    set guioptions+=LlRrb
    set guioptions-=LlRrb

    " Set size
    set lines=50 columns=177
endif
