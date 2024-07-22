-- keybindings
local function map(mode, lhs, rhs, opts)
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

map("i", "jj", "<ESC>")             -- exit insert mode with jj
map("n", "<C-a>", "gg0vG$")         -- select all
map("n", "<leader>nh", ":nohl<CR>") -- turn highlights off
map("n", "<C-s>", "{jv}k") -- select current node

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
-- map("i", "'", "''<Left>")
-- map("i", "\"", "\"\"<Left>")
-- map("i", "{", "{}<Left>")
-- map("i", "[", "[]<Left>")
-- map("i", "(", "()<Left>")
-- map("i", "<", "<><Left>")

-- Quickfix
map("n", "<leader>qo", ":copen<CR>")
map("n", "<leader>qf", ":cfirst<CR>")
map("n", "<leader>qn", ":cnext<CR>")
map("n", "<leader>qp", ":cprev<CR>")
map("n", "<leader>ql", ":clast<CR>")
map("n", "<leader>qc", ":cclose<CR>")

-- Visual mode
map("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>")
map("v", "<C-s>", "<cmd>sort<CR>")
map("v", "J", "<cmd>m '>+1<CR>gv=gv")
map("v", "K", "<cmd>m '>-2<CR>gv=gv")

-- Debugging
map("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
-- map("n", "<leader>bc", "<cmd>lua require'dap'.map_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
-- map("n", "<leader>bl", "<cmd>lua require'dap'.map_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
-- map("n", '<leader>br', "<cmd>lua require'dap'.clear_breakpoints()<cr>")
-- map("n", '<leader>ba', '<cmd>Telescope dap list_breakpoints<cr>')
map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
map("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
map("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
map("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
-- map("n", '<leader>dd', function() require('dap').disconnect(); require('dapui').close(); end)
-- map("n", '<leader>dt', function() require('dap').terminate(); require('dapui').close(); end)
-- map("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
-- map("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
-- map("n", '<leader>di', function() require "dap.ui.widgets".hover() end)
-- map("n", '<leader>d?', function() local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes) end)
-- map("n", '<leader>df', '<cmd>Telescope dap frames<cr>')
-- map("n", '<leader>dh', '<cmd>Telescope dap commands<cr>')
-- map("n", '<leader>de', function() require('telescope.builtin').diagnostics({default_text=":E:"}) end)
