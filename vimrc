set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'flazz/vim-colorschemes'
Plugin 'myusuf3/numbers.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'lervag/vimtex'
"Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"" EasyMotion
let g:EasyMotion_do_mapping = 0 
let g:EasyMotion_keys = 'hklyuiopnmqwertasdgzxcvbjf'
let g:EasyMotion_use_upper = 0 
let g:EasyMotion_smartcase = 1 
let g:EasyMotion_startofline = 0 
map  f <Plug>(easymotion-s2)
xmap f <Plug>(easymotion-s2)
omap f <Plug>(easymotion-t2)
map J <Plug>(easymotion-j)
map K <Plug>(easymotion-k)
hi link EasyMotionTarget Todo
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First Todo
hi link EasyMotionTarget2Second Todo
hi link EasyMotionIncSearch IncSearch
hi link EasyMotionIncCursor Search

syntax on
"set number
"" Vim-latex set-up "
set grepprg=grep\ -nH\ $*
filetype indent on
set sw=2
set iskeyword+=:

" Turn off swap files
set noswapfile
set nobackup
set nowb

set pastetoggle=<F2>
syntax enable
let g:Powerline_symbols = 'fancy'

set laststatus=2
let g:solarized_termcolors=256
set t_Co=256
"colorscheme SerialExperimentsLain
if has('gui_running')
  set background=light
  colorscheme solarized
else
  set background=dark
  colorscheme monokai-chris 
endif

" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 -interaction=nonstopmode $*'
let g:Tex_Env_figure="\\begin{figure}[<+htpb+>]\<cr>\\centering\<cr>\\includegraphics{<+file+>}\<cr>\\caption{<+caption text+>}\<cr>\\label{fig:<+label+>}\<cr>\\end{figure}<++>"
"let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf'
"undo
"set undofile
"set undodir=$HOME/.vim/undo
"set undolevels=1000
"set undoreload=10000
""
"" tabs
set showmatch " Shows matching brackets
set wrap linebreak nolist
set textwidth=0 wrapmargin=0
"set textwidth=99
"set spell spelllang=en_gb
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code
set shiftwidth=4
" yanks go to clipboard
set clipboard=unnamed
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set fileformat=unix

" ----------------------------------------
" Thinkpad X1 Configuration
" ----------------------------------------

" ---------------
" Home/End
" ---------------
" Shortcuts for Home/end because my home/end is position
" crap on my thinkpad
" Ctrl+Shift+Left/Right -> Home/End
"nnoremap <C-S-Left> <Home>
"inoremap <C-S-Left> <Home>
"nnoremap <C-S-Right> <End>
"inoremap <C-S-Right> <End>
""
"inoremap <C-e> <Esc>A
"inoremap <C-a> <Esc>I
"
""split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"

set encoding=utf-8
