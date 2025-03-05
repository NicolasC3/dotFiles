local vim = vim

return {

  {

    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        format_on_save = {
          -- These options will be passed to conform.format()
          timeout_ms = 500,
          lsp_format = "fallback",
        },
      })
    end,
  },

  {
    "zapling/mason-conform.nvim",
    config = function()
      require("mason-conform").setup({
        ignore_install = {} -- List of formatters to ignore during install
      })
    end,
  },

}
