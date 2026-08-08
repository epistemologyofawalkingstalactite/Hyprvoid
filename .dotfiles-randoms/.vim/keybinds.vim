" Estás son las binds del rey en vendas

" ---

" Poner espacio como leader key
let mapleader = " "

" ---

" Abrir netrw con <leader>cd
nnoremap <leader>cd :Ex<CR>

" ---

" Mover lineas con jk y reajusta la sangría (like Alt-Up/Down)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" ---

" Desplazar lineas de abajo con J y que no se vaya a la verga.
nnoremap J mzJ`z

" ---

" Scrollear media pág con Control d (abajo)/u (arriba) y skill issu centrarlo.
" nnoremap <C-d> <C-d>zz
" nnoremap <C-u> <C-u>zz

" ---

" Centrar el próximo/previo (skill issu)
" nnoremap n nzzzv
" nnoremap N Nzzzv

" ---

" pegar sin sobreescribir el portapapeles
xnoremap <leader>p "_dP
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" ---

" Hacer que <C-c> se comporte como <Esc> en insert mode (why?)
" inoremap <C-c> <Esc>

" ---

" Moverse de la lista de quickfix usando Ctrl-j/k
nnoremap <C-j> :lnext<CR>
nnoremap <C-k> :lprev<CR>
nnoremap <leader>cl :lclose<CR>

" ---

" Disable Ex mode (accidental Q)
nnoremap Q <nop>

" ---

" Location list navigation (centra la pantalla...) (quitar la " para que sea)
nnoremap <leader>k :lnext<CR>"zz
nnoremap <leader>j :lprev<CR>"zz

" ---

" Doge doc generator (generar documentación por alguna razón
nnoremap <leader>dg :DogeGenerate<CR>

" ---

" Substitute word under cursor on line
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>

" ---

" Make current file executable
nnoremap <leader>x :!chmod +x %<CR>

" ---

" Yank via OSCYank
nmap <leader>y <Plug>OSCYankOperator
vmap <leader>y <Plug>OSCYankVisual

" ---

" Reload vimrc (adjust path as needed)
nnoremap <leader>rl :source ~/.vim/vimrc<CR>

" ---

" Source current file
nnoremap <leader><leader> :so<CR>

" ---
