set encoding=utf-8

"set shortcuts prefix for <Leader>
let mapleader=";"

"set Shortcuts ;1 and ;2 to line head and tail.
nmap <Leader>1 0
nmap <leader>2 $

"set Shortcuts for jump windows
nnoremap <Leader>n <C-w><C-w>
nnoremap <Leader>l <C-W>l
nnoremap <Leader>h <C-W>h
nnoremap <Leader>k <C-W>k
nnoremap <Leader>j <C-W>j

"set syntax on and enable
syntax on
syntax enable

set incsearch
set ignorecase
set nocompatible
set wildmenu

set nobackup

set cmdheight=1
set laststatus=2
set ruler
set number
set cursorline
set hlsearch

filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set nowrap

set autoindent
set cindent
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

    "   vim-airline "
if isdirectory(expand("~/.vim/bundle/vim-airline"))
    let g:airline_theme="solarized"
endif

    "   Tagbar  "
if isdirectory(expand("~/.vim/bundle/tagbar/"))
    nnoremap <silent> <Leader><F3> :TagbarToggle<CR>
    let tagbar_width=32
endif

    "   NERDTree    "
if isdirectory(expand("~/.vim/bundle/nerdtree"))
    nnoremap <Leader><F2> :NERDTreeToggle<cr>
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
    "   Indent-guides   "
if isdirectory(expand("~/.vim/bundle/vim-indent-guides"))
    let g:indent_guides_start_level=2
    let g:indent_guides_guide_size=1
    let g:indent_guides_auto_colors=0
    hi IndentGuidesOdd ctermbg=black
    hi IndentGuidesEven ctermbg=darkgrey
    nmap <silent> <Leader>i <Plug>IndentGuidesToggle
endif
