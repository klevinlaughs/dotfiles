" this is for devicons
" let g:lightline = {
"       \ 'component_function': {
"       \   'filetype': 'MyFiletype',
"       \   'fileformat': 'MyFileformat',
"       \ }
"       \ }

" function! MyFiletype()
"   return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
" endfunction
"
" function! MyFileformat()
"   return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
" endfunction

let g:lightline = { 
  \'colorscheme': 'material',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
  \ },
  \'tabline': {
  \  'left': [ ['buffers' ]],
  \  'right': [[ 'close' ]]
  \},
  \'component_expand': {
  \  'buffers': 'lightline#bufferline#buffers'
  \},
  \'component_type': {
  \  'buffers': 'tabsel'
  \}
  \}
" Disable tabline if using vim-buffet
let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }

" needed for clickable bufferline
let g:lightline.component_raw = {'buffers': 1}

" bufferline config
let g:lightline#bufferline#clickable = 1
let g:lightline#bufferline#filename_modifier = ':t'
