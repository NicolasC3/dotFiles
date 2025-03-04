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
  -- {
  --   "peterbjorgensen/sved",
  --   filetypes = { "tex" },
  -- },
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
  {
    "TabbyML/vim-tabby",
    config = function()
      vim.g.tabby_keybinding_accept = "<Tab>"
    end,
  },

  -- To leave the tab binding to tabby
  {
    "nvim-cmp",
    keys = {
      { "<Tab>", mode = { "i", "s" }, false },
    },
  },

  {
    "debugloop/telescope-undo.nvim",
    dependencies = { -- note how they're inverted to above example
      {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
      },
    },
    keys = {
      { -- lazy style key map
        "<leader>u",
        "<cmd>Telescope undo<cr>",
        desc = "undo history",
      },
    },
    opts = {
      -- don't use `defaults = { }` here, do this in the main telescope spec
      extensions = {
        undo = {
          -- telescope-undo.nvim config, see below
        },
        -- no other extensions here, they can have their own spec too
      },
    },
    config = function(_, opts)
      -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
      -- configs for us. We won't use data, as everything is in it's own namespace (telescope
      -- defaults, as well as each extension).
      require("telescope").setup(opts)
      require("telescope").load_extension("undo")
    end,
  },

  {
    "cshuaimin/ssr.nvim",
    module = "ssr",
    -- Calling setup is optional.
    config = function()
      require("ssr").setup({
        border = "rounded",
        min_width = 50,
        min_height = 5,
        max_width = 120,
        max_height = 25,
        adjust_window = true,
        keymaps = {
          close = "q",
          next_match = "n",
          prev_match = "N",
          replace_confirm = "<cr>",
          replace_all = "<leader><cr>",
        },
      })
    end,
  },
  { "terrastruct/d2-vim", filetypes = { "d2" } },

  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Nextcloud/Notes",
        },
        -- {
        --   name = "work",
        --   path = "~/vaults/work",
        -- },
      },
    },
  },

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      scope = { enabled = false },
    },
  },
}
