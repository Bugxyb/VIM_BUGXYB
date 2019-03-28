" set ALE and language Server
set completeopt=menu,menuone
if isdirectory(expand("~/.vim/Bundle/ale"))
    "set php LS config
    let g:ale_php_langserver_use_global = 1
    let g:ale_php_langserver_executable=$HOME.'/.composer/vendor/bin/php-language-server.php'
    " set Python LS config
    let g:ale_python_pyls_config = {
\   'pyls': {
\     'plugins': {
\       'pylint': {
\         'enabled': v:false
\       }
\     }
\   },
\ }

    " Set this variable to 1 to fix files when you save them.
    let g:ale_fix_on_save = 1

    ""ALE fixers
    let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['autopep8'],
\}

    " Enable completion where available.
    " This setting must be set before ALE is loaded.
    let g:ale_completion_enabled = 1

    let g:ale_linters={
            \ 'python': ['pyls'],
            \ 'php': ['langserver'],
            \ 'sh': ['language_server'],
            \ 'vim': ['vint'],
            \ }

    " Only run linters named in ale_linters settings.
    let g:ale_linters_explicit = 1
    let g:ale_sign_column_always = 1
    let g:ale_sign_error = 'E'
    let g:ale_sign_warning = 'W'
    highlight clear ALEErrorSign
    highlight clear ALEWarningSign
    " Set this in your vimrc file to disabling highlighting
    let g:ale_set_highlights = 0

    function! LinterStatus() abort
        let l:counts = ale#statusline#Count(bufnr(''))
        let l:all_errors = l:counts.error + l:counts.style_error
        let l:all_non_errors = l:counts.total - l:all_errors
        return l:counts.total == 0 ? 'OK' : printf(
        \   '%dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
    endfunction
    set statusline=%{LinterStatus()}
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
    " Write this in your vimrc file
    let g:ale_lint_on_text_changed = 'never'
    " You can disable this option too
    " if you don't want linters to run on opening a file
    let g:ale_lint_on_enter = 0

    " Write this in your vimrc file
    let g:ale_set_loclist = 0
    let g:ale_set_quickfix = 1
    let g:ale_open_list = 1
    " Set this if you want to.
    " This can be useful if you are combining ALE with
    " some other plugin which sets quickfix errors, etc.
    let g:ale_keep_list_window_open = 1
    let g:ale_list_window_size = 5
endif
