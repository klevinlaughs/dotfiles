" needs gui shim
GuiPopupmenu 0
GuiTabline 0
" suppress bad pitch metrics (usually windows)
GuiFont! JetBrains\ Mono:h11

if exists('g:fvim_loaded')
  " FVimCursorSmoothMove v:true
  FVimCursorSmoothBlink v:true
  set guifont=JetBrains\ Mono:h14

  nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
  nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
  nnoremap <A-CR> :FVimToggleFullScreen<CR>
endif

