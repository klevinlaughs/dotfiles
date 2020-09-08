" runtime sources first file found in runtime path
" avoid having to specify absolute path with source
" if source should be used, expand path relative to init.vim
" let s:init_path = expand('%:p:h')
"
" let $NVIM_COC_LOG_LEVEL = 'debug'
" let g:node_client_debug = 1
"
" can glob this, but these wont really increase
runtime settings/defs.vim
runtime settings/plugins.vim
runtime settings/general.vim
runtime settings/maps.vim
" can specify plug path and `gf` to that too
" let s:plugin_config_dir = 'plugc/'
" needs the bang! otherwise it will only source the first match
runtime! plugc/*.vim
" let g:buffet_show_index = 1
"if exists('g:neovide')
"  set guifont=JetBrains\ Mono:h14
"  nnoremap <silent> <A-CR> :let g:neovide_fullscreen = !g:neovide_fullscreen<CR>
  " nnoremap <A-CR> :call NeovideToggleFullScreen()<CR>
  "
  " function! NeovideToggleFullScreen()
  "     if g:neovide_fullscreen
  "         let g:neovide_fullscreen = v:false
  "     else
  "         let g:neovide_fullscreen = v:true
  "     endif
  " endfunction
"endif
