set laststatus=2  "永远显示状态栏

"lightline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

set noshowmode

if !has('gui_running')
  set t_Co=256
endif


let g:instant_markdown_slow = 1
let g:vim_markdown_folding_disabled = 1

