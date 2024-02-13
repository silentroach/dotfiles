local keymap = vim.keymap.set

-- moving between windows
keymap("n", "<C-j>", "<C-W>j")
keymap("n", "<C-k>", "<C-W>k")
keymap("n", "<C-h>", "<C-W>h")
keymap("n", "<C-l>", "<C-W>l")

keymap("n", "<leader>bd", ":bdelete<cr>", { desc = "Close current buffer" })

-- keep selection after indent
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

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
keymap("n", "<S-Up>", "<cmd>resize +2<CR>")
keymap("n", "<S-Down>", "<cmd>resize -2<CR>")
keymap("n", "<S-Left>", "<cmd>vertical resize -2<CR>")
keymap("n", "<S-Right>", "<cmd>vertical resize +2<CR>")

-- disable highlighting
keymap("n", "<leader><cr>", ":noh<cr>", { desc = "Disable highlights" })
