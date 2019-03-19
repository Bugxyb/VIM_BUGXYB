"set leadermap info

"global
"set shortcuts prefix for <Leader>
let mapleader = " "

"set Shortcuts ;1 and ;2 to line head and tail.
nmap <Leader>1 0
nmap <leader>2 $

"set Shortcuts for jump windows
nnoremap <Leader><Tab> <C-w><C-w>
nnoremap <Leader>l <C-W>l
nnoremap <Leader>h <C-W>h
nnoremap <Leader>k <C-W>k
nnoremap <Leader>j <C-W>j

nnoremap <silent> <Leader>z :tablast<CR>
nnoremap <silent> <Leader>x :tabnext<CR>


"Plug
" set <F1> for open NERD Tree
nnoremap <Leader><F1> :NERDTreeToggle<CR>

" set fzf Search for Rg and Ag
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>s :Ag<CR>
