" Limelight Mappings
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" Limelight Configs
" For some color schemes, Limelight may not be able to calculate the color for
" dimming down the surrounding paragraphs. In that case, you need to define g:limelight_conceal_ctermfg or g:limelight_conceal_guifg.
"
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = (&bg == 'dark') ? 'DarkCyan' : 'gray'
