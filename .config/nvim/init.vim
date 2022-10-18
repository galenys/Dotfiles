if &shell =~# 'fish$'
  set shell=sh
endif

imap jk <Esc>:w<Enter>
imap <Esc> <NOP>

nnoremap == ggvG=

if has("nvim")
  inoremap <ESC> <C-\><C-n>
  tnoremap jk <C-\><C-n>
endif

filetype plugin indent on

syntax on

set linebreak

set encoding=utf-8
set clipboard=unnamedplus
set number relativenumber

set ttyfast
set mouse=a
let g:NERDTreeMouseMode=3

inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab


call plug#begin('~/.config/nvim/plugged')

Plug 'dense-analysis/ale'
let g:ale_linters = {
      \   'haskell': ['stack-ghc', 'ghc-mod', 'hlint', 'hdevtools', 'hfmt'],
      \}

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

Plug 'scrooloose/nerdtree'
map <C-e> :NERDTreeToggle<CR>

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'franbach/miramare'
set termguicolors
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1
let g:miramare_transparent_background = 1

Plug 'dag/vim-fish'

Plug 'tpope/vim-commentary'

Plug 'dart-lang/dart-vim-plugin'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
set conceallevel=0

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

call plug#end()

colorscheme miramare

set clipboard=unnamedplus

