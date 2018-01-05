set nocompatible              " required
filetype plugin on            " required
filetype on

""""""""""""
" VUNDLE   "
""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' "supersearch
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/c.vim' "for c/c++ code
Plugin 'lervag/vimtex'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'Shutnik/jshint2.vim'
Plugin 'skammer/vim-css-color'
Plugin 'altercation/vim-colors-solarized'
Plugin 'triglav/vim-visual-increment'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"NERD TREE STUFF
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" MAP CTRl+N to nerd tree
nnoremap <C-n> :NERDTreeToggle<CR>



""""""""""""
" SECURITY "
""""""""""""
set exrc
set secure



""""""""""""""""""
" STYLES DEFAULT "
""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab



"""""""""""""""""
" Column STOP   "
"""""""""""""""""
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray






""""""""""""""""""""""
" General  IDE Stuff "
""""""""""""""""""""""
" map esc to jk
inoremap jk <Esc>

" enable syntax highlight
syntax enable

" show the matching part for [] {} ()
set showmatch

" Use relative numbering 
" set number for normal numbering
set number
set relativenumber

" Set a cursor line on number
set cursorline

" Provides a wildmenu for auto complete
set wildmenu

" Gundo Undo
nnoremap <leader>u :GundoToggle<CR>

" Enable folding
set foldmethod=indent
set foldlevel=2
set foldnestmax=10

"Space as shortcut for code folding
nnoremap <space> za

"Show code folding
let g:SimpylFold_docstring_preview=1

set ignorecase



"""""""""""""""""""""
" PYTHON Formatting "
"""""""""""""""""""""
" For python files
" PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" For jsim files
"  Temporary placeholder

" enable all Pyton syntax highlighting features
let python_highlight_all = 1


" For YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


""""""""""""""
" C++        "
""""""""""""""
" for c++
autocmd BufRead,BufNewFile *.h,*.cpp,*.cxx 
\ nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

" for c
autocmd BufRead,BufNewFile *.h,*.c
\ nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>


"""""""""""""
" SNIPS     "
"""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Leader>t"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-B>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

