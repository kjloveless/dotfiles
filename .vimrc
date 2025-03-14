syntax on

set mouse=a

set number

filetype indent on

set modelines=0

set ruler

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrnl
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

if has("autocmd")
  " If the filetype is Makefile then we need to use tabs
  " so do not expand tabs into space.
  autocmd FileType make    set noexpandtab
endif

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>
runtime! macros/matchit.vim

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>
" inoremap \" \""<Left>
" inoremap ' ''<Left>
" inoremap ` ``<Left>

inoremap <expr> <CR> search('{\%#}', 'n') ? "\<CR>\<CR>\<Up>\<C-f>" : "\<CR>"
