" plugins.vim - Dead simple plugin manager

" ---

" Sourcea este archivo en tu vimrc
let s:plugin_dir = expand('~/.vim/plugged')

" ---

" Instalar un plugin si no existe:
function! s:ensure(repo)
  let name = split(a:repo, '/')[-1]
  let path = s:plugin_dir . '/' . name
  
  if !isdirectory(path)
    if !isdirectory(s:plugin_dir)
      call mkdir(s:plugin_dir, 'p')
    endif
    execute '!git clone --depth=1 https://github.com/' . a:repo . ' ' . shellescape(path)
  endif
  
  execute 'set runtimepath+=' . fnameescape(path)
endfunction

" ---

" Los plugins que tienes ahorita mismo (?)
call s:ensure('junegunn/fzf')
call s:ensure('junegunn/fzf.vim')
call s:ensure('tomasiser/vim-code-dark')
call s:ensure('ghifarit53/tokyonight-vim')
call s:ensure('yegappan/lsp')
call s:ensure('ojroques/vim-oscyank')
call s:ensure('tpope/vim-commentary')
call s:ensure('itchyny/lightline.vim')

" ---
