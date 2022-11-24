require('plugins')
require('lsp')
require('barbar-config')

vim.keymap.set('i', 'jk', [[<Esc>:w<Enter>]])

vim.diagnostic.config({
  virtual_text = true,
  signs = false
})
vim.diagnostic.open_float = true

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

vim.keymap.set('i', '"', [[""<left>]])
vim.keymap.set('i', '[', "[]<left>")
vim.keymap.set('i', '(', "()<left>")
vim.keymap.set('i', '{', "{}<left>")

vim.cmd([[
  filetype plugin indent on
]])
