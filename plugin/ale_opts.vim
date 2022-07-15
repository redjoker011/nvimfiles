" Disable ale lsp to work with coc nvim
" https://github.com/dense-analysis/ale#5iii-how-can-i-use-ale-and-cocnvim-together
let g:ale_disable_lsp = 1

" Fix files on save
let g:ale_fix_on_save = 1

" Remove whitespaces
" Note: Put other fixers in /ftplugin/{language}.vim
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

" Navigate through errors quickly
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
