vim.opt.termguicolors = true

vim.keymap.set("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes" -- gutter space is always reserved
--vim.opt.smoothscroll = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- using NeoColumn
-- vim.opt.colorcolumn = "80"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 6

vim.opt.cursorline = true

-- diagnostic symbols in signcolumn (same as in trouble.lua)
vim.fn.sign_define("DiagnosticSignError", { text = "󰅚", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌶", texthl = "DiagnosticSignHint" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
