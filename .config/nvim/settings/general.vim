set nocompatible " be iMproved
let g:is_windows = has('win32') || has('win64') || has('win16') || has('dos32') || has('dos16')
let g:is_nvim = has('nvim')
let g:is_oni = exists('g:gui_oni')

" colorscheme OceanicNext
" colorscheme material
" colorscheme codedark
colorscheme gruvbox
" let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
let g:material_theme_style = 'palenight'
set noshowmode " don't show insert/normal/visual mode, it's shown in lightline

set clipboard=unnamedplus
set autoread

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

filetype plugin indent on
syntax on
set title
set ignorecase smartcase
set nu relativenumber
set clipboard^=unnamed,unnamedplus
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set backspace=indent,eol,start
set ruler
set cursorline
" set cursorcolumn
" set wildmode=longest "default full
" put new splits on the right and below, rather than displacing
set splitbelow splitright
set incsearch " abbr. `is`
set scrolloff=3 " abbr. `so`
set sidescrolloff=5 "abbr. `siso`
set noswapfile
set noerrorbells
set nowrap
set showtabline=2

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" hi clear CursorLine
" hi Cursor gui=reverse cterm=reverse ctermbg
" hi CursorLine gui=underline cterm=underline "ctermfg=none guifg=none
" hi CursorLineNR gui=underline cterm=underline

set timeoutlen=500

set encoding=UTF-8

" TODO: create auto command for this, or accept that there is always an
" ~invisible~ EOL, which is technically correct in UNIX
" https://stackoverflow.com/a/16224292
" https://stackoverflow.com/a/729795
" set noeol nofixeol
