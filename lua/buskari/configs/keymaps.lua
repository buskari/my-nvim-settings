-- keybindings
function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options.vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Personal preferences
map("n", "<leader>r", "<cmd>source %<CR>")
map("n", "<leader>w", "<cmd>w<CR>")
-- map("n", "<leader>e", "<cmd>:Ex<CR>")
map("n", "<leader>ll", "<cmd>:Lazy<CR>")
map("n", "<leader>mm", "<cmd>:Mason<CR>")

map("i", "jj", "<ESC>") -- exit insert mode with jj 
map("n", "<C-a>", "gg0vG$") -- select all
map("n", "<leader>nh", ":nohl<CR>") -- select all

-- Window management
map("n", "<leader>s", "<cmd>split<CR><C-w>j")
map("n", "<leader>v", "<cmd>vsplit<CR><C-w>l")
map("n", "<leader>x", "<cmd>close<CR>")
map("n", "<C-Left>", "<cmd>vertical resize +3<CR>")
map("n", "<C-Right>", "<cmd>vertical resize -3<CR>")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Automatically close pairs
map("i", "'", "''<Left>")
map("i", "\"", "\"\"<Left>")
map("i", "{", "{}<Left>")
map("i", "[", "[]<Left>")
map("i", "(", "()<Left>")
map("i", "<", "<><Left>")

-- Visual mode
map("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>")
map("v", "<C-s>", "<cmd>sort<CR>")
map("v", "J", "<cmd>m '>+1<CR>gv=gv")
map("v", "K", "<cmd>m '>-2<CR>gv=gv")
