if exists('g:loaded_trailer') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

command! Trailer lua require'trailer'.trailer()

nnoremap <leader>2 :Trailer<cr>

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_trailer = 1
