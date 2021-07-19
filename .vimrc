" Install vim-plug automatically
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialise vim-plug
call plug#begin('~/.vim/plugged')

" Sane defaults
Plug 'tpope/vim-sensible'

" Automatically adjust 'shiftwidth' and 'expandtab'
Plug 'tpope/vim-sleuth'

" Git integration
Plug 'tpope/vim-fugitive'

" Easily interact with tmux
Plug 'preservim/vimux'

" Commenting support
Plug 'tpope/vim-commentary'

" Seamless navigation between vim and tmux
Plug 'christoomey/vim-tmux-navigator'

" appearance
Plug 'vim-airline/vim-airline'

if v:version >= 810 || has('nvim')
  " markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

  "Plug 'OmniSharp/omnisharp-vim'
  "Plug 'dense-analysis/ale'
" let g:ale_linters = {
" \ 'cs': ['OmniSharp']
" \}
  let g:OmniSharp_server_use_mono = 1
endif

" markdown syntax
Plug 'plasticboy/vim-markdown'

" LaTeX
Plug 'lervag/vimtex'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

source $HOME/.vim/config/general.vim
source $HOME/.vim/config/mappings.vim

source $HOME/.vim/config/plugins/fzf.vim
source $HOME/.vim/config/plugins/vim-airline.vim
source $HOME/.vim/config/plugins/vim-markdown.vim
source $HOME/.vim/config/plugins/vimux.vim
