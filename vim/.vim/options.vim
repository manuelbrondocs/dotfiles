" Terminal & UI
set termguicolors
set number
set relativenumber
set cursorline

" Syntax / Filetype
syntax on
filetype plugin indent on
" Detect filetype, load filetype plugins and indent scripts

" Colorscheme / Theme
set background=light
colorscheme quiet

" Clipboard integration
set clipboard=unnamedplus
" Use the system clipboard for yank/delete/put operations

" Tabs and indentation
set expandtab
" Use spaces instead of literal tab characters
set shiftwidth=4
" Number of spaces to use for each step of (auto)indent
set tabstop=4
" Number of spaces that a <Tab> in the file counts for
set softtabstop=4
" Number of spaces a Tab feels like while editing (insert mode)
set smartindent
" Do smart auto-indenting for C-like programs

" Editing behavior
set backspace=indent,eol,start
" allow backspace to delete auto-indent, join lines, and past the point where Insert mode was entered
