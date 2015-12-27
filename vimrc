syntax on
syntax enable

set encoding=utf-8
set nocompatible
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set expandtab
set hlsearch
set cmdheight=1
set laststatus=2
set backspace=indent,eol,start
set t_Co=256
set background=dark

if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    let g:solarized_termcolors=256
    let g:solarize_termtrans=1
    let g:solarize_constrast="normal"
    let g:solarize_visibility="normal"
    color solarized
endif

if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_wq=0

nmap <F5> :NERDTreeToggle<cr>
