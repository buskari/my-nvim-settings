return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    -- Update the path passed to your python path
    local python_path = "/home/buskari/.asdf/shims/python3"
    local handle = io.popen(python_path .. " --version")
    local result = handle:read("*a")
    handle:close()

    if result and result:match("Python") then
      require("dap-python").setup(python_path)
    else
      print("Invalid Python path: " .. python_path)
    end

    local function map(mode, lhs, rhs, desc)
      vim.api.nvim_set_keymap(mode, lhs, rhs, desc or { noremap = true, silent = true })
    end

    map("n", "<leader>oi", "<cmd>lua if vim.bo.filetype == 'python' then vim.cmd('PyrightOrganizeImports') end<CR>")
    map("n", "<leader>tc", "<cmd>lua if vim.bo.filetype == 'python' then require('dap-python').test_class() end<CR>")
    map("n", "<leader>tm", "<cmd>lua if vim.bo.filetype == 'python' then require('dap-python').test_method() end<CR>")
  end,
}


-- <leader>bb -> add breakpoint
-- <leader>dc -> debug continue and start debug session
-- <leader>di -> show the debud information of the variable the cursor is on
-- <leader>dj -> step over
-- <leader>dk -> step in
-- <leader>do -> step out
-- <leader>dt -> terminate session
