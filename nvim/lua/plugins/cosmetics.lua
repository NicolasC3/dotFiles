local vim = vim

return {

  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        -- table: additional groups that should be cleared
        extra_groups = { "NormalFloat", "NvimTreeNormal" },
        -- table: groups you don't want to clear
        exclude_groups = {},
      })
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = function()
      require('lualine').setup()
    end,
  },

  {
    "prichrd/netrw.nvim",
    config = function()
      require("netrw").setup({})
    end,
  },

}
