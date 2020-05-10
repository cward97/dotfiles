" My .vimrc file. It contains settings for vim and nvim.


" -------------------------------------------------
" -------------------- PLUGINS --------------------
" -------------------------------------------------

" install vim-plug if not already there
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf.vim'

" LateX
Plug 'lervag/vimtex'

" appearance
Plug 'vim-airline/vim-airline'

" fix tmux yanking
Plug 'roxma/vim-tmux-clipboard'

" solarized color scheme
Plug 'altercation/vim-colors-solarized'

call plug#end()

" ----------------------------------------------
" -------------------- BASE --------------------
" ----------------------------------------------

" set where to save viminfo file
set viminfo+=n~/.vim/viminfo

set number          " line numbering
set mouse=a         " enable mouse support

" appearance
set background=dark
colorscheme solarized

" indentation options
filetype plugin indent on

" text wrapping
let &showbreak='>>'         " appears at start of wrapped lines
if has('breakindent') && has('breakindentopt')
  set breakindent             " make indentation of wrapped lines match line above
  set breakindentopt+=shift:2 " indent wrapped text relative to first line
  set breakindentopt+=sbr     " display showbreak symbol before applying breakindent
endif
set cpoptions+=n            " make showbreak symbol appear in same column as line numbers

" enable folds
set fdm=syntax

" set where splits appear
set splitbelow
set splitright

" Mappings
" Ctrl and Mod are largely reserved
" Alt: splits
" Leader: equivalent of Ctrl
" open fuzzy finder
map <Leader>f :FZF<CR>

imap jk <C-[>

" centre cursor after searches
nmap n nzz
nmap N Nzz

nmap H 0
nmap J G
nmap K gg
nmap L $

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

