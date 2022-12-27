local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'VonHeikemen/lsp-zero.nvim'
-- End

Plug 'matze/vim-move'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

Plug 'jiangmiao/auto-pairs'

Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope.nvim', {tag = '0.1.0'})
vim.keymap.set("n", "<C-f>", ":Telescope find_files hidden=true<CR>")
vim.keymap.set("n", "<C-b>", ":Telescope live_grep<CR>")

vim.cmd([[
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
]])

Plug('scrooloose/nerdtree', {on = 'NERDTreeToggle'})
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>")

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'luochen1990/rainbow'
vim.g.rainbow_active = 1

Plug 'franbach/miramare'
vim.opt.termguicolors = true

Plug 'xiyaowong/nvim-transparent'

Plug 'tpope/vim-commentary'

Plug 'eandrju/cellular-automaton.nvim'

Plug 'ggandor/leap.nvim'

Plug 'sirver/ultisnips'
vim.g.UltiSnipsExpandTrigger = '<tab>'
vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
vim.cmd([[
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
]])

vim.cmd([[
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
]])

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

