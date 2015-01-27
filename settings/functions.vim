function! NegateLastCommand()
  let cmd = histget(':', -1)
  exe cmd . '!'
endfunction

nnoremap <leader>n :call NegateLastCommand()<cr>
