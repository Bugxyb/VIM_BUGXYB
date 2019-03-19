" set NERD Tree
if isdirectory(expand("~/.vim/Bundle/nerdtree"))
    "set NERD Tree Index symbols
    let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
    " close NERDTree When only open NERDTree
    autocmd bufenter * if
        \ (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
        \ | q | endif
    " set the arrows
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'
    " set the NERD Tree Ignore
    let NERDTreeIgnore=[
                \ '\.py[cd]$','\~$','\.swo$','\.swp$',
                \ '^\.git$','^\.hg$','^\.svn$','\.bzr$']
    " NERDTress File highlighting
    function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
        exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg
        exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
    endfunction

    call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
    call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
    call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
    call NERDTreeHighlightFile('ymal', 'yellow', 'none', 'yellow', '#151515')
    call NERDTreeHighlightFile('py', 'Red', 'none', '#ffa500', '#151515')
    " show the Bookmarks when NERDTree open
    let NERDTreeShowBookmarks=0
    " show the Hidden
    let NERDTreeShowHidden=1
    " Auto delete buffer
    let NERDTreeAutoDeleteBuffer=1
    let NERDTreeWinPos='left'
    let NERDTreeWinSize=25
    let NERDTreechDirMode=0
    let NERDTreeMouseMode=2
endif
