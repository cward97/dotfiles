" correct indenting
setlocal shiftwidth=2
setlocal softtabstop=2

" SNIPPETS

" std::cout
nmap <Leader>cout :-1read snippets/cpp/cout.cpp<CR>3t<i
