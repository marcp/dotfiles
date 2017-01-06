"Ensure that our plugins work properly
set nocompatible

" Use vundle to handle plugins
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Bundle 'gmarik/vundle'

" Github repos
Bundle 'adimit/prolog.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'chriskempson/base16-vim'
Bundle 'danchoi/ri.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'ervandew/screen'
Bundle 'ervandew/supertab'
Bundle 'fs111/pydoc.vim'
Bundle 'gg/python.vim'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'int3/vim-extradite'
Bundle 'jcf/vim-latex'
Bundle 'jgdavey/tslime.vim'
Bundle 'jgdavey/vim-turbux'
Bundle 'juvenn/mustache.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mattn/emmet-vim'
Bundle 'mileszs/ack.vim'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'ngmy/vim-rubocop'
Bundle 'noprompt/vim-yardoc'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'Raimondi/delimitMate'
Bundle 'rosenfeld/conque-term'
Bundle 'scrooloose/syntastic'
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
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'vim-scripts/matchparenpp'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'scrooloose/nerdtree'

" Enable detection, plugins, and indenting in one step
filetype plugin indent on

" Turn syntax highlighting on
syntax on

" Change ctrlp to use \t
let g:ctrlp_map = '<leader>t'

" Have ctrlp use the directory we're currently in
let g:ctrlp_working_path_mode = 0

" Show dotfiles
let g:ctrlp_show_hidden = 1

" Set Taglist width
let Tlist_WinWidth = 50

" Use ag instead of ack - https://github.com/ggreer/the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Colors for RainbowParentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['cyan',        'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" Use custom turbux mappings
let g:no_turbux_mappings = 1

" Set color scheme
set background=dark
"colorscheme base16-railscasts

" Hide buffers instead of closing them
set hidden

" Ignore case when searching
set ignorecase
" Ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase

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
" set cursorline

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" Always show what mode we're currently editing in
set showmode

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

set history=200

" Do not highlight search results
set nohlsearch

" Show line and column number of cursor position in status window
set ruler
set laststatus=2

" Editing settings

" Convert tabs to 2 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2
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

" Easily edit the vimrc file with \ev
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
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>m :CtrlPMRUFiles<CR>

" Turbux mappings
map <leader>lr <Plug>SendTestToTmux
map <leader>lR <Plug>SendFocusedTestToTmux

" TSlime mappings
nmap <leader>lv <Plug>SetTmuxVars
nmap <leader>lv <Plug>SetTmuxVars
nmap <leader>lt :call Send_to_Tmux("script/test " . expand("%") . "\n")<CR>

" Indent cursor in block after {[( characters
inoremap {<CR> {<CR>}<C-O>O
inoremap [<CR> [<CR>]<C-O>O
inoremap (<CR> (<CR>)<C-O>O

" Map select all
nmap <leader>o ggVG

" Map Gundo to \u
nnoremap <leader>u :GundoToggle<CR>

" Remap filetab controls
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
" Don't map C-T because it conflicts with ctags
" map <C-t> :tabnew<CR>
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

" map \f to display all lines with keyword under cursor and ask which one to jump to
nmap <leader>f [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Yank/paste to the OS clipboard with \y and \p
nmap <leader>y "+y
nmap <leader>Y "+yy
nmap <leader>p "+p
nmap <leader>P "+P

nmap <leader>yf :let @+=expand("%")<CR>

" Alignment mappings
nmap <leader>a= :Tab /=><CR>
vmap <leader>a= :Tab /=><CR>
nmap <leader>a: :Tab /:<CR>
vmap <leader>a: :Tab /:<CR>
nmap <leader>a- :Tab /=<CR>
vmap <leader>a- :Tab /=<CR>
nmap <leader>ah :Tab/\w: \zs/l0l1<CR>
vmap <leader>ah :Tab/\w: \zs/l0l1<CR>

" Jump to matching pairs easily with Tab
nnoremap <Tab> %
vnoremap <Tab> %

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

" Ack - betterthangrep.com - defaults to using ag (The Silver Searcher).
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

" Toggle RainbowParentheses automatically
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let vimrubocop_rubocop_cmd = "bundle exec rubocop"

au FileType ruby set softtabstop=2 tabstop=2 shiftwidth=2
au FileType javascript set softtabstop=2 tabstop=2 shiftwidth=2

" ctrl-k, ctrl-j to go up/down in command history
cmap <C-k> <Down>
cmap <C-j> <Up>

map <C-w>J 30<C-w><
map <C-w>K 30<C-w>>

let g:gist_post_private = 1

set list
set listchars=tab:->
set number
