" Automatically save on buffer changes
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

" appearance
set background=dark

set autowrite

" indentation options
filetype plugin indent on

" text wrapping
let &showbreak='>>'         " appears at start of wrapped lines
set breakindent             " make indentation of wrapped lines match line above
set breakindentopt+=shift:2 " indent wrapped text relative to first line
set breakindentopt+=sbr     " display showbreak symbol before applying breakindent
set cpoptions+=n            " make showbreak symbol appear in same column as line numbers

" set where splits appear
set splitbelow
set splitright

" improve backspace
set backspace=indent,eol,start

" change cursor shape for different modes
" (source: https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes)
let &t_SI = "\<Esc>[6 q"
let &t_EI = "\<Esc>[2 q"
