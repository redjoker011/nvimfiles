" Enable Lightvim in Goyo mode
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Add mapping for Goyo
nmap <F9> :Goyo<CR>

" Enable Goyo when opening markdown files
function! s:auto_goyo()
  if &ft == 'markdown'
    Goyo 80
  elseif exists('#goyo')
    let bufnr = bufnr('%')
    Goyo!
    execute 'b '.bufnr
  endif
endfunction

autocmd BufEnter * call s:auto_goyo()
