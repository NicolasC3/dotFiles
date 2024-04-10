return {
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    requires = { { "nvim-lua/plenary.nvim" } },
    branch = "harpoon2",
    config = function()
      require("harpoon").setup()
    end,
  },
  -- {
  --   "xiyaowong/transparent.nvim",
  --   lazy = false,
  --   config = function()
  --     require("transparent").setup({
  --       enable = true,
  --       extra_groups = {
  --         "GitSignsAdd",
  --         "GitSignsChange",
  --         "GitSignsDelete",
  --       },
  --       exclude = {},
  --     })
  --   end,
  -- },
  {
    "glacambre/firenvim",

    -- Lazy load firenvim
    -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
    lazy = not vim.g.started_by_firenvim,
    build = function()
      vim.fn["firenvim#install"](0)
    end,
  },
  {
    "aserowy/tmux.nvim",
    lazy = false,
    config = function()
      require("tmux").setup()
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/lua/snippets/" } })
      require("luasnip").config.set_config({ -- Setting LuaSnip config
        -- Enable autotriggered snippets
        enable_autosnippets = true,
      })
    end,
  },
  -- {
  --   "gptlang/CopilotChat.nvim",
  --   lazy = false,
  -- },
  {
    "lervag/vimtex",
    filetypes = { "tex" },
    config = function()
      vim.g.vimtex_view_general_viewer = "evince"
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = ".aux",
        out_dir = "",
      }
    end,
    -- latexmk = {
    --   build_dir = "build",
    --   callback = function (bufnum)
    --     vim.cmd("silent !zathura build/main.pdf &")
    --   end
    -- }
    -- require("vimtex").setup({
    --     vimtex_view_method = "zathura",
    -- })
  },
  {
    "peterbjorgensen/sved",
    filetypes = { "tex" },
  },
  -- {
  --   "tpope/vim-vinegar",
  -- },
  {
    "prichrd/netrw.nvim",
    config = function()
      require("netrw").setup({
        -- Put your configuration here, or leave the object empty to take the default
        -- configuration.
        -- icons = {
        --   symlink = '', -- Symlink icon (directory and file)
        --   directory = '', -- Directory icon
        --   file = '', -- File icon
        -- },
        -- use_devicons = true, -- Uses nvim-web-devicons if true, otherwise use the file icon specified above
        -- mappings = {}, -- Custom key mappings
      })
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "folke/noice.nvim",
    enabled = false,
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  {
    "tpope/vim-fugitive",
  },
}
