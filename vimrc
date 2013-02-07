
"""""""""""""""" General settings """"""""""""""""
set nocompatible

filetype plugin on
filetype indent on

set autoread
set ruler
set nu

" Always show the status line
set laststatus=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

" For regular expressions turn magic on
set magic

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
"set noerrorbells
"set novisualbell
"set t_vb=
"set tm=500

" Colors and Fonts
syntax on
filetype on
colorscheme desert
set guifont=Courier_New:h10

" File type and unicoding
set encoding=utf-8 
set fileencodings=ucs-bom,utf-8,cp936
set ffs=unix,dos,mac

" Backup and swap
set nobackup
set nowb
set noswapfile


"""""""""""""""" fold enable python """""""""""""""""
autocmd FileType python setlocal foldmethod=indent
set foldlevel=99


"""""""""""""""" Special Text and indent """"""""""""""
set expandtab
set smarttab

set tabstop=4
set shiftwidth=4
set softtabstop=4
set wrap

set autoindent
set smartindent

set list


"""""""""""""""" Moving around, tabs, windows and buffers """"""""""""""""
"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


""""""""""""""""" windows config """"""""""""""
if has('win32')
    autocmd GUIEnter * simalt ~x
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set gcr=a:block-blinkon0
    
    " fix garbage code on menu and console
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
endif


""""""""""""" pathogen """""""""""""""""""""
call pathogen#infect()


"""""""""""""""" ctags and taglist """""""""""""
if has('win32')    
    let Tlist_Ctags_Cmd = 'ctags'
else              
    let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif

let Tlist_Show_One_file=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Sort_Type='name'
" let Tlist_Close_On_Select=1
nmap tl :TlistToggle<CR>


""""""""""""" nerdtree """""""""""""""""""""
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['\.pyc$', '\.pyw$']
map <C-t> :NERDTreeToggle<CR>


""""""""""""" MiniBufExplorer """""""""""""""""""""""
set showtabline=0 " Use MiniBufExplorer instead of gui tab
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

