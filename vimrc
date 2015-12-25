syntax on

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

set background=dark
colorscheme solarized
let g:solarized_termcolors=256

if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_wq=0

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [row:\ %04l/%L]\ [col:\ %04v]\ [%p%%]

nmap <F5> :NERDTreeToggle<cr>
