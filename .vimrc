" vim-plug
call plug#begin('~/.vim/plugged')

" git integration
Plug 'tpope/vim-fugitive'

" appearance
Plug 'vim-airline/vim-airline'

if v:version >= 810 || has('nvim')
  " markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
endif

" markdown syntax
Plug 'plasticboy/vim-markdown'

call plug#end()

" Base
" set where to save viminfo file
set viminfo+=n~/.vim/viminfo

" Search down into subfolders
" source: https://www.youtube.com/watch?v=XA2WjJbmmoM
set path+=**

" Display all matching files when we tab complete
" source: https://www.youtube.com/watch?v=XA2WjJbmmoM
set wildmenu

set number          " line numbering
set mouse=a         " enable mouse support

let mapleader = ','

" appearance
set background=dark

" indentation options
filetype plugin indent on

" text wrapping
let &showbreak='>>'         " appears at start of wrapped lines
set breakindent             " make indentation of wrapped lines match line above
set breakindentopt+=shift:2 " indent wrapped text relative to first line
set breakindentopt+=sbr     " display showbreak symbol before applying breakindent
set cpoptions+=n            " make showbreak symbol appear in same column as line numbers

" enable folds
set fdm=syntax

" set where splits appear
set splitbelow
set splitright

nmap <Leader>w :up<CR>
nmap <Leader>q :q<CR>

" centre cursor after searches
nmap n nzz
nmap N Nzz

" improve backspace
set backspace=indent,eol,start

" ^<Backspace> deletes a whole word
imap <C-H> <C-W>

" --------------- TERMINAL MODE ---------------
if exists(':tmap')
    " escape sequence
    tmap <A-[> <C-\><C-n>

    " switching between split windows
    tmap <A-h> <C-\><C-n><C-w>h
    tmap <A-j> <C-\><C-n><C-w>j
    tmap <A-k> <C-\><C-n><C-w>k
    tmap <A-l> <C-\><C-n><C-w>l
endif

" --------------- VISUAL MODE ---------------

" keep visual selection active when indenting
vnoremap > >gv
vnoremap < <gv

" plugins

" --------------- VIM-AIRLINE ---------------

let g:airline#extensions#tabline#enabled = 1    " enable tab/buffer line  

" ----------------------------------------------
" -------------------- APPEARANCE --------------------
" ----------------------------------------------

" change cursor shape for different modes
" (source: https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes)
let &t_SI = "\<Esc>[6 q"
let &t_EI = "\<Esc>[2 q"
