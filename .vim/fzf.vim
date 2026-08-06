" FZF mapa de llaves (requiere que le plugees 'junegunn/fzf.vim')

" ---

" Files
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fo :History<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fq :CList<CR>    " For quickfix list
nnoremap <leader>fh :Helptags<CR>

" ---

" Grep el actual string
nnoremap <leader>fs :Rg <C-r><C-w><CR>

" ---

" Grep a cualquier string que le pongas (fzf prompt)
nnoremap <leader>fg :Rg<Space>

" ---

" Grep por nombre del archivo actual (sin extensión)
nnoremap <leader>fc :execute 'Rg ' . expand('%:t:r')<CR>

" ---

" Encontrar archivos en mi Vim config.
nnoremap <leader>fi :Files ~/.vim<CR>

" ---
