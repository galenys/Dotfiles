vim.g.mapleader = "<Space>"

-- My Files
require('plugins')
require('lsp')
require('barbar-config')
-- require('ocaml_config')
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
vim.opt.scrolloff = 10
vim.g.NERDTreeMouseMode = 3
vim.g.loaded_matchparen = 1
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- vim.keymap.set('i', '"', [[""<left>]])
-- vim.keymap.set('i', '[', "[]<left>")
-- vim.keymap.set('i', '(', "()<left>")
-- vim.keymap.set('i', '{', "{}<left>")

vim.cmd([[
  filetype plugin indent on
]])

-- TODO: Fix this bullshit
-- require('tree-sitter-ocaml').ocaml;
-- require('tree-sitter-ocaml').interface;

vim.cmd([[
  let g:opamshare = substitute(system('opam var share'),'\n$','','''')
  execute "set rtp+=" . g:opamshare . "/merlin/vim"
]])
