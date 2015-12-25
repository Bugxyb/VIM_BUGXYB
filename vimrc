syntax on

set encoding=utf-8
set nocompatible
set number
set cursorline
set tabstop=4
set expandtab
set hlsearch
set cmdheight=1
set laststatus=2
set backspace=indent,eol,start

if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_wq=0

nmap <F5> :NERDTreeToggle<cr>
