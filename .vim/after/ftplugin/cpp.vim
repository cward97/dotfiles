setlocal shiftwidth=2
setlocal softtabstop=2

setlocal colorcolumn=80,90,100

" SNIPPETS

" std::cout
nmap <Leader>cout :-1read ~/.vim/after/ftplugin/snippets/cpp/cout.cpp<CR>3t<i
