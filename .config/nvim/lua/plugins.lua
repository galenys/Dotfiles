local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('scrooloose/nerdtree', {on = 'NERDTreeToggle'})
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>")

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'luochen1990/rainbow'
vim.g.rainbow_active = 1

Plug 'franbach/miramare'
vim.opt.termguicolors = true
vim.g.miramare_enable_italic = 1
vim.g.miramare_disable_italic_comment = 1
vim.g.miramare_transparent_background = 1

Plug 'dag/vim-fish'

Plug 'tpope/vim-commentary'

Plug 'sirver/ultisnips'
vim.g.UltiSnipsExpandTrigger = '<tab>'
vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
-- vim.g.UltiSnipsSnippetDirectories=["UltiSnips"]

vim.call('plug#end')

vim.cmd([[
  colorscheme miramare
]])

-- vim.cmd([[
--   call plug#begin('~/.config/nvim/plugged')
  
--   Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  
--   Plug 'bling/vim-airline'
--   Plug 'vim-airline/vim-airline-themes'
  
--   Plug 'tomasr/molokai'

--   Plug 'luochen1990/rainbow'
--   let g:rainbow_active = 1
  
--   Plug 'franbach/miramare'
--   set termguicolors
--   let g:miramare_enable_italic = 1
--   let g:miramare_disable_italic_comment = 1
--   let g:miramare_transparent_background = 1
  
--   Plug 'dag/vim-fish'
  
--   Plug 'tpope/vim-commentary'
  
--   Plug 'dart-lang/dart-vim-plugin'
  
--   Plug 'lervag/vimtex'
--   let g:tex_flavor='latex'
--   let g:vimtex_view_method='zathura'
--   set conceallevel=0
  
--   Plug 'sirver/ultisnips'
--   let g:UltiSnipsExpandTrigger = '<tab>'
--   let g:UltiSnipsJumpForwardTrigger = '<tab>'
--   let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
--   let g:UltiSnipsSnippetDirectories=["UltiSnips"]
  
--   call plug#end()
  
--   colorscheme miramare
  
--   set clipboard=unnamedplus
-- ]])

