
" http://stackoverflow.com/questions/5904720/gvim-pathogen-issues

set nocompatible
" This must be first, because it changes other options as side effect set nocompatible
"
" Use pathogen to easily modify the runtime path to include all plugins under
" the ~/.vim/bundle directory
filetype off                    " force reloading *after* pathogen loaded
call pathogen#infect()
" call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()
" filetype plugin indent on       " enable detection, plugins and indenting in one step


" http://nvie.com/posts/how-i-boosted-my-vim/


set hidden
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
" set autoindent    " always set autoindenting on
" set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
" set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

syntax enable
set background=dark
" set background=light
colorscheme solarized


set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

" let a='foo'
" let b='bar'

" let cfoo='hello'
" let cbar='bye'

" echo c{a}
" echo c{b}

" set mouse=a

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" http://mutelight.org/articles/dbext-the-last-sql-client-youll-ever-need

" SQLite
let g:dbext_default_profile_sqlite_for_rails = 'type=SQLITE:dbname=/Users/hernad/sqlite_1.db'


" http://stevelosh.com/blog/2010/09/coming-home-to-vim/

let mapleader = ","

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" sa ,W skloni sve suvisne white space-ove
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" sa ,<strelica dole> idi na kraj tekuceg buffer-a
nnoremap <leader><down> 10000000gg


let g:github_user = 'hernad'
let g:github_token = '0b35b43824d627bc07bb2353b058b182'

" http://newbiedoc.sourceforge.net/tutorials/vim/example-vim.html.en
map! ,h1 <h1></h1><ESC>2ba
map tv :echo 'Tekuće vrijeme je ' . strftime('%c')<CR>


" https://gist.github.com/971862

if has("mac") || has("macunix")

map å <M-a>
map ∫ <M-b>
map ç <M-c>
map ∂ <M-d>
map ´ <M-e>
map ƒ <M-f>
map © <M-g>
map ˙ <M-h>
map ˆ <M-i>
map ∆ <M-j>
map ˚ <M-k>
map ¬ <M-l>
map µ <M-m>
map ˜ <M-n>
map ø <M-o>
map π <M-p>
map œ <M-q>
map ® <M-r>
map ß <M-s>
map † <M-t>
map ¨ <M-u>
map √ <M-v>
map ∑ <M-w>
map ≈ <M-x>
map ¥ <M-y>
map Ω <M-z>

map Å <M-A>
map ı <M-B>
map Ç <M-C>
map Î <M-D>
map ´ <M-E>
map Ï <M-F>
map ˝ <M-G>
map Ó <M-H>
map ˆ <M-I>
map Ô <M-J>
map  <M-K>
map Ò <M-L>
map Â <M-M>
map ˜ <M-N>
map Ø <M-O>
map ∏ <M-P>
map Œ <M-Q>
map ‰ <M-R>
map Í <M-S>
map ˇ <M-T>
map ¨ <M-U>
map ◊ <M-V>
map „ <M-W>
map ˛ <M-X>
map Á <M-Y>
map ¸ <M-Z>



endif

map <A-a> :ChefFindAny<CR> 


" autocmd VimEnter waits until all initialization is finished (plugins are loaded)
" autocmd VimEnter * NERDTree
" wincmd p puts the cursor in the main window (rather than the NERDTree window)
" autocmd VimEnter * wincmd p

set wrap
map <F1> :NERDTree<CR>:wincmd p<CR>
map <F3> <C-]>
map <F2> <C-O>

au! BufWritePost .vimrc source %

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Headlights'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 
 
"
" Brief help
"
" :BundleInstall  - install bundles (won't update installed)
" :BundleInstall! - update if installed
"
" :Bundles foo    - search for foo
" :Bundles! foo   - refresh cached list and search for foo
"
" :BundleClean    - confirm removal of unused bundles
" :BundleClean!   - remove without confirmation
"
" see :h vundle for more details
" or wiki for FAQ
" Note: comments after Bundle command are not allowed.:.
