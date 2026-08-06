" Estás son mis opciones de Vim 30/07/2026

" ---

" Para identar y otras cosas jeje
filetype plugin indent on
set softtabstop=4
set smartindent
set showmatch
syntax on

" ---

" Responsiveness

" Cambiar el tiempo de espera del cursor
set updatetime=67

" Cambiar el tiempo de espera en secuencias
set ttimeoutlen=35

" ---

" Line numbers
set number
set relativenumber

" ---

" Indentation and tabs
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

" ---

" Search
set ignorecase
set smartcase
set incsearch

" ---

" Appearance
set background=dark
set signcolumn=yes
set cursorline
set colorcolumn=80

" ---

" Backspace behavior
set backspace=indent,eol,start

" --- 

" Split window behavior
set splitbelow
set splitright

" ---

" dw/diw/ciw tratar las - junto a palabras como una sola. (comentada porque x)
" set iskeyword+=-

" ---

" Mantener 8 lineas de arriba y abajo cuando te desplazas con jk (skill_issue)
" set scrolloff=8

" ---

" Que la ventana de estatus esté siempre en el editor aunque en lightline tmb.
set laststatus=2

" ---
