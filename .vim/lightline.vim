" Esta es la configuración de la ligthline (la barrita de estatus jeje)

" ---

" Esto es para que se vea, xde (?)
set laststatus=2

" ---

" " Este es el color
" let g:lightline = {
"       \ 'colorscheme' : 'tokyonight',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
"       \   'right': [ [ 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'FugitiveHead',
"       \   'filename': 'LightlineFilename'
"       \ }
"       \ }

"---

" Este es para que salga el nombre de la cosa que estamos editando abajito.
function! LightlineFilename()
  return expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

" ---
