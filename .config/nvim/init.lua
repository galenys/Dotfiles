vim.g.mapleader = "<Space>"

-- My Files
require('plugins')
require('lsp')
require('barbar-config')
-- End My Files

require('leap').add_default_mappings()
require('telescope').load_extension('fzf')
require "telescope".setup {
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  }
}
require("transparent").setup({
  enable = true,
  extra_groups = {
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {},
})
require("symbols-outline").setup({
  show_numbers = true,
})

vim.keymap.set('i', 'jk', [[<Esc>:w<Enter>]])

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
})
vim.keymap.set('n', '<C-l>', ':lua vim.diagnostic.open_float()<CR>')

vim.opt.linebreak = true
vim.opt.encoding = "utf-8"
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.ttyfast = true
vim.opt.mouse = "a"
vim.opt.tabstop = 2
vim.g.NERDTreeMouseMode = 3
vim.g.loaded_matchparen = 1
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.cmd([[ 
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
augroup END
]])
vim.opt.scrolloff = 99999
vim.cmd([[ 
  nnoremap n nzz
  nnoremap N Nzz
  nnoremap gg ggzz
  nnoremap G Gzz
]])

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.keymap.set('n', '<C-P>', ':Copilot panel<CR>')

vim.keymap.set('n', '<C-m>', ':SymbolsOutline<CR>')

vim.g.copilot_filetypes = {
    ["*"] = false,
    ["javascript"] = true,
    ["typescript"] = true,
    ["lua"] = false,
    ["rust"] = true,
    ["c"] = true,
    ["c#"] = true,
    ["c++"] = true,
    ["go"] = true,
    ["python"] = true,
  }

vim.cmd([[
  filetype plugin indent on
]])

vim.cmd([[
  let g:opamshare = substitute(system('opam var share'),'\n$','','''')
  execute "set rtp+=" . g:opamshare . "/merlin/vim"
]])
