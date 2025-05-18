-- Save and quit
map("n", "<C-s>", "<cmd>w<CR>", opts)
map("n", "<leader>qq", "<cmd>wqa<CR>", opts)
map("n", "QQ", "<cmd>q<CR>", opts)

map("i", "jj", "<ESC>", opts)

-- Navigate between windows
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
