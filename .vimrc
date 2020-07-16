" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

" git integration
Plug 'tpope/vim-fugitive'

" commenting
Plug 'tpope/vim-commentary'

" appearance
Plug 'vim-airline/vim-airline'

" solarized color scheme
Plug 'altercation/vim-colors-solarized'

if v:version >= 810 || has('nvim')
  " markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

  Plug 'OmniSharp/omnisharp-vim'
  Plug 'w0rp/ale'
  let g:OmniSharp_server_use_mono = 1

  let g:ale_linters = { 'cs': ['OmniSharp'] }
endif

" markdown syntax
Plug 'plasticboy/vim-markdown'

call plug#end()

" set where to save viminfo file
set viminfo+=n~/.vim/viminfo

" automatically save on buffer changes
set autowrite

" disable netrw banner
let g:netrw_banner = 0

" Search down into subfolders
" source: https://www.youtube.com/watch?v=XA2WjJbmmoM
set path+=**

" Display all matching files when we tab complete
" source: https://www.youtube.com/watch?v=XA2WjJbmmoM
set wildmenu

set number          " line numbering
set relativenumber  " relative line numbering
set mouse=a         " enable mouse support

let mapleader = ','

" correct indenting
" set shiftwidth=2
" set softtabstop=2

" appearance
set background=dark
colorscheme solarized

set autowrite

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

" improve backspace
set backspace=indent,eol,start

" ^<Backspace> deletes a whole word
imap <C-H> <C-W>

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
