local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "folke/which-key.nvim",
    { "folke/neoconf.nvim",              cmd = "Neoconf" },
    "folke/neodev.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    {
        "folke/tokyonight.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    "nvim-treesitter/playground",
    "ThePrimeagen/harpoon",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "lewis6991/gitsigns.nvim",
    "tpope/vim-surround",
    "vim-airline/vim-airline",
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    "tpope/vim-commentary",

    {
        "VonHeikemen/lsp-zero.nvim",
        lazy = false,
        dependencies = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            {
                "williamboman/mason.nvim",
                build = ":MasonUpdate"
            },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
            { "molleweide/LuaSnip-snippets.nvim" },
        }
    },
    -- "mfussenegger/nvim-jdtls",

    -------------------
    -- Latex support --
    -------------------
    "lervag/vimtex",
    {
        "iurimateus/luasnip-latex-snippets.nvim",
        -- replace "lervag/vimtex" with "nvim-treesitter/nvim-treesitter" if you're
        -- using treesitter.
        dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
        config = function()
            require 'luasnip-latex-snippets'.setup()
            -- or setup({ use_treesitter = true })
        end,
        -- treesitter is required for markdown
        ft = { "tex", "markdown" },
    },
})
