let g:mapleader = "\<Space>"
" let g:mapleader = ' '
let g:maplocalleader = "\\"

" easy escape
" Acually, <C-c> or <C-[> work, they are defaults
" inoremap fj <esc>
" inoremap jf <esc>
" vnoremap fj <esc>
" this affects visual move down, adds delay
" likely same delay as specified by which-key
" vnoremap jf <esc>

" easy window switching
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l

" window resize
nnoremap <silent> <c-left> :vertical resize -3<cr>
nnoremap <silent> <c-right> :vertical resize +3<cr>
nnoremap <silent> <c-up> :resize +3<cr>
nnoremap <silent> <c-down> :resize -3<cr>

nnoremap <silent> <m-l> :tabnext<cr>
nnoremap <silent> <m-h> :tabprev<cr>

nnoremap <silent> <m-L> :bn<cr>
nnoremap <silent> <m-H> :bp<cr>
nnoremap <Leader><Tab> :bw<CR>
nnoremap <Leader><S-Tab> :bw!<CR>

" suggested by coc.nvim, move lines up/down with alt like vscode
nnoremap <silent> <A-j> :m .+1<CR>==
nnoremap <silent> <A-k> :m .-2<CR>==
inoremap <silent> <A-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <A-k> <Esc>:m .-2<CR>==gi
vnoremap <silent> <A-j> :m '>+1<CR>gv=gv
vnoremap <silent> <A-k> :m '<-2<CR>gv=gv

" delete without adding to buffer 
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP

tnoremap <Esc> <C-\><C-n>
nnoremap <silent> <c-n> :noh<CR>

" edit and source config (dot)
nnoremap <silent> <leader>.e :e $MYVIMRC<cr>
nnoremap <silent> <leader>.t :tabe $MYVIMRC<cr>
nnoremap <silent> <leader>.s :so $MYVIMRC<cr>

" center search result
nnoremap n nzzzv
nnoremap N Nzzzv

" navigate via enter when in init.vim
augroup config
  au!
  au BufEnter $MYVIMRC nnoremap <cr> gf
  au BufLeave $MYVIMRC unmap <cr>
augroup END

" nnoremap <silent><buffer> <c-l>x :exe getline('.')<cr>

" function EditFiles(path, ext)
"     let s:fullFile = a:path . '.component.' . a:ext
"     " execute 'e ' . s:fullFile
"     echo s:fullFile
" endfunction
"
" command! EditHtml call EditFiles(expand('%:p:h'), 'html')

" nnoremap <silent> <leader>eh :EditHtml<cr>

" nnoremap <silent> <leader>fs :w<CR>

