" LSP

" ---

" Habilitar remarque de diagnóstico
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)
let lspServers = [
      \ #{
      \   name: 'rust-analyzer',
      \   filetype: ['rust'],
      \   path: 'rust-analyzer',
      \   args: []
      \ }
      \ ]

autocmd User LspSetup call LspAddServer(lspServers)

" ---

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>
inoremap <silent> <C-Space> <C-x><C-o>

" ---

" Activar omnifunc para completaciones
autocmd FileType php setlocal omnifunc=lsp#complete

" ---

" Símbolos custom de diagnóstico
autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: '✘',
    \   diagSignWarningText: '▲',
    \   diagSignInfoText: '»',
    \   diagSignHintText: '⚑',
    \ })

" ---
