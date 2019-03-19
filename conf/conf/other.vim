set laststatus=2  "永远显示状态栏
"   vim-airline

if isdirectory(expand("~/.vim/Bundle/vim-airline"))
    let g:airline_theme="solarized"
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'default'
endif
