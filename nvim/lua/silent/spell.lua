vim.opt.spell = false
vim.opt.spelllang = "en_us,ru"

vim.keymap.set("n", "<leader>ss", ":setlocal spell!<cr>", { desc = "Toggle spellchecking" })
