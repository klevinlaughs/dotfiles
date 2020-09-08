" command! -bang WebClientFiles call fzf#vim#files('./packages/frend/web/client', <bang>0)
" dumb mercurial
" command! -bang ProjectFiles call fzf#vim#files(<q-args>, {'source': 'rg --files --ignore-file ./.hgignore', 'options': ['--preview']}, <bang>0)
command! -bang ProjectFiles call fzf#vim#files(<q-args>, {'source': 'rg --files --ignore-file ./.hgignore'}, <bang>0)
" nnoremap <silent> <c-p> :ProjectFiles<cr>
" let g:fzf_preview_window = 'right:50%'
