return {
  "fisadev/vim-isort",
  ft = "python",
  config = function()
    -- Disable default key binding
    vim.g.vim_isort_map = ''

    -- Automatically format file buffer on save
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      pattern = "*.py",
      callback = function()
        vim.cmd("Isort")
      end,
    })
  end
}
