local keymap = vim.keymap.set

-- moving between windows (now using nvim-tmux-navigator)
-- keymap("n", "<C-j>", "<C-W>j")
-- keymap("n", "<C-k>", "<C-W>k")
-- keymap("n", "<C-h>", "<C-W>h")
-- keymap("n", "<C-l>", "<C-W>l")

keymap("n", "<leader>bd", "<cmd>:bp|bd#<cr>", { desc = "Close current buffer" })
keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- keep selection after indent
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- navigating diagnostic messages
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

-- moving lines
keymap("n", "<A-j>", ":m .+1<CR>==")
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap("n", "<A-k>", ":m .-2<CR>==")
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv")
keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- paste over currently selected text without yanking it
keymap("v", "p", '"_dP')

-- resize window using <shift> arrow keys
keymap("n", "<S-Down>", "<cmd>resize +2<CR>")
keymap("n", "<S-Up>", "<cmd>resize -2<CR>")
keymap("n", "<S-Right>", "<cmd>vertical resize -2<CR>")
keymap("n", "<S-Left>", "<cmd>vertical resize +2<CR>")

-- disable highlighting
keymap("n", "<leader><cr>", ":noh<cr>", { desc = "Disable highlights" })
keymap("n", "<esc>", ":noh<cr>", { desc = "Disable highlights" })

-- Make U opposite to u.
keymap("n", "U", "<C-r>", { desc = "Redo" })

-- Show full diagnostic message
keymap("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Diagnostic message" })
