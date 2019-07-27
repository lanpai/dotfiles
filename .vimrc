set title
set titlestring=%{expand(\"%:p:r\")}
execute "set titleold=urxvt"

set clipboard=unnamedplus

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

syntax on

if &compatible
    set nocompatible
endif

set backspace=indent,eol,start

set history=200
set ruler
set showcmd
set wildmenu

set ttimeout
set ttimeoutlen=100

set scrolloff=15

if has('reltime')
    set incsearch
endif

set nrformats-=octal

if has("mouse")
    set mouse=a
endif

if 1
    filetype plugin indent on
    
    augroup vimStartup
        au!
        autocmd BufReadPost *
                    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
                    \ | exe "normal! g`\""
                    \ | endif
    augroup END
endif

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

set number
