return {
  "mfussenegger/nvim-lint",
  evet = "BufWritePost",
  config = function()
    -- Define table of linter for each filetype (not extensions)
    -- Addinal llinters can be found here: https://github.com/mfussengger
    require("lint").linters_by_ft = {
      -- Uncomment whichever linters you perfer
      python = {
        "flake8",
        -- "mypy",
        -- "pylint",
      }
    }

    -- Automatically format file buffer on save
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      pattern = "*.py",
      callback = function()
        require("lint").try_lint()
      end,
    })
  end
}
