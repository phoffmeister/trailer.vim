if exists('g:loaded_trailer') | finish | endif
let g:loaded_trailer = 1

command Trailer :call trailer#trailer()

nnoremap <leader>2 :Trailer<cr>

