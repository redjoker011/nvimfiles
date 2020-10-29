" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_haml_checkers = ['haml_lint']

" restrict html
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

"Sass Lint Configurations
let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_scss_checkers=["sasslint"]
