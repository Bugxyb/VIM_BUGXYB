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
set cursorline
set cmdheight=1
set laststatus=2
set backspace=indent,eol,start
set t_Co=256
set background=dark

    "   Vundle  "
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

    "   solarized   "
if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    let g:solarized_termcolors=256
    let g:solarize_termtrans=1
    let g:solarize_constrast="normal"
    let g:solarize_visibility="normal"
    color solarized
endif

    "   Tagbar  "
if isdirectory(expand("~/.vim/bundle/tagbar/"))
    nnoremap <silent> <F3> :TagbarToggle<CR>
endif

    "   Syntastic   "
if isdirectory(expand("~/.vim/bundle/syntastic/"))
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_check_on_open=1
    let g:syntastic_always_populate_loc_list=1
    let g:syntastic_auto_loc_list=1
    let g:syntastic_check_on_wq=0
    let g:syntastic_cpp_compiler_options=' -std=c++0x'
    let g:syntastic_cpp_check_header=1
    let g:syntastic_cpp_no_include_search=1
    let g:syntastic_cpp_auto_refresh_includes=1
    let g:syntastic_enable_signs=1
endif

    "   NERDTree    "
if isdirectory(expand("~/.vim/bundle/nerdtree"))
    nnoremap <F2> :NERDTreeToggle<cr>
    let NERDTreeWinPos=0
    let NERDTreeWinSize=25
    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.py[cd]$','\~$','\.swo$','\.swp$','^\.git$','^\.hg$','^\.svn$','\.bzr$']
    let NERDTreechDirMode=0
    let NERDQuitOnOpen=1
    let NERDTreeMouseMode=2
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
endif
