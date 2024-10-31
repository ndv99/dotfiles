" inspiration: https://www.youtube.com/watch?v=nOhlk3mpgmM

" Highlights all search results
set hlsearch

" Use CTRL+L to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Search incrementally (show results as soon as you type)
set incsearch

" Use the system clipboard for yanking
set clipboard=unnamedplus

" Use a tab size of 2
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Convert tabs to spaces
set expandtab
set autoindent
set fileformat=unix

" Syntax highlighting
syntax on

" Use UTF-8 encoding
set encoding=utf-8

" Show relative line numbers
set number relativenumber" Use the system clipboard for yanking
set clipboard=unnamedplus

" Use a tab size of 2
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Convert tabs to spaces
set expandtab
set autoindent
set fileformat=unix

" Syntax highlighting
syntax on

" Use UTF-8 encoding
set encoding=utf-8

" Show relative line numbers
set number relativenumber

" Enable autocomplete - use CTRL + N to activate
set wildmode=longest,list,full


