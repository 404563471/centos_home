set nu
set ruler
command -nargs=? Sudow :w !sudo tee %
set tabstop=4
set softtabstop=4
set shiftwidth=4
set incsearch
set showmatch
syntax on
set mouse=a
set history=500
set shell=/bin/zsh

" map <C-a><CR> :write !sh<CR>
map <C-a> :.write !sh<CR>

map <F11> :bprev!<CR>
map <F12> :bnext!<CR>
"<Tab> commond mode just like zsh
set wildmenu
set wildmode=full

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>



set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1


if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = '☰'
"let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

set guifont=Liberation_Mono_for_Powerline:h10 
set guifont=Liberation\ Mono\ for\ Powerline\ 10 

Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme="powerlineish" 



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" "Buffer about plugins
" Bundle 'fholgado/minibufexpl.vim'
" let g:miniBufExplMapWindowNavVim = 1   
" let g:miniBufExplMapWindowNavArrows = 1   
" let g:miniBufExplMapCTabSwitchBufs = 1   
" let g:miniBufExplModSelTarget = 1  
" let g:miniBufExplMoreThanOne=0


"nerdtree
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
map <F2> :silent! NERDTreeToggle<CR> 
map <F1> :NERDTreeToggle<CR>

Bundle 'SuperTab'
let g:SuperTabRetainCompletionType=2
"0 - 不记录上次的补全方式
"1 - 记住上次的补全方式,直到用其他的补全命令改变它
"2 - 记住上次的补全方式,直到按ESC退出插入模式为止"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"



"vim-commentary
Bundle 'tpope/vim-commentary'

""为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,c,cpp set commentstring=//\ %s














"Bundle 'Vim-R-plugin'
"Bundle 'jalvesaq/Nvim-R'

