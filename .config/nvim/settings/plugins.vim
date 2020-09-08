let s:vim_plug_dir = g:is_windows ? glob('~/AppData/Local/nvim/autoload/plug.vim') : glob('~/.vim/autoload/plug.vim')
" this is really for windows compat? but execut doesn't really work?
" let s:vim_plug_dir2 = fnamemodify($MYVIMRC, ':p:h')
if empty(s:vim_plug_dir)
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
" silent execute "!curl -fLo " . s:vim_plug_dir2 . "/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'equalsraf/neovim-gui-shim'

" {{{ themes
Plug 'gruvbox-community/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'tomasiser/vim-code-dark'
" Plug 'kristijanhusak/vim-hybrid-material'
Plug 'kaicataldo/material.vim'
" }}}

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' } " no CLI
" TODO: find out why ripgrep so slow

Plug 'mhinz/vim-startify'

Plug 'tomtom/tcomment_vim'
Plug 'machakann/vim-highlightedyank'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'

Plug 'machakann/vim-sandwich' " can't add multiple? doesn't add spaces unless config
" Plug 'tpope/vim-surround' '" does this even work?

Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'

Plug 'vimwiki/vimwiki'

Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-dirvish'
Plug 'liuchengxu/vim-which-key'

Plug 'norcalli/nvim-colorizer.lua'
" Plug 'RRethy/vim-hexokinase'

Plug 'voldikss/vim-floaterm'

Plug 'junegunn/rainbow_parentheses.vim'

" Plug 'bagrat/vim-buffet'
Plug 'mengelbrecht/lightline-bufferline' " alternative to vim-buffet

Plug 'ryanoasis/vim-devicons'

" Plug 'tpope/vim-sensible'
call plug#end()

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

autocmd FileType * RainbowParentheses
