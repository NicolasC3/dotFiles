-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'folke/tokyonight.nvim',
        config = function()
            vim.cmd('colorscheme tokyonight-night')
        end
    })

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('tpope/vim-surround')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("folke/zen-mode.nvim")
    -- use("github/copilot.vim")
    use("eandrju/cellular-automaton.nvim")

    use('vim-airline/vim-airline')

    use "EdenEast/nightfox.nvim"

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use('tpope/vim-commentary')

    use('lervag/vimtex')

    use {
        "iurimateus/luasnip-latex-snippets.nvim",
        -- replace "lervag/vimtex" with "nvim-treesitter/nvim-treesitter" if you're
        -- using treesitter.
        -- requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
        config = function()
            require 'luasnip-latex-snippets'.setup()
            -- or setup({ use_treesitter = true })
        end,
        ft = "tex",
    }

    -----------markdown---------------
    use 'godlygeek/tabular'
    use 'elzr/vim-json'
    use 'plasticboy/vim-markdown'
    use 'iamcco/markdown-preview.nvim'

    use 'mfussenegger/nvim-jdtls'

    -- use {
    --     "iurimateus/luasnip-latex-snippets.nvim",
    --     -- replace "lervag/vimtex" with "nvim-treesitter/nvim-treesitter" if you're
    --     -- using treesitter.
    --     requires = { "L3MON4D3/LuaSnip", "nvim-treesitter/nvim-treesitter" },
    --     config = function()
    --         require 'luasnip-latex-snippets'.setup({ use_treesitter = true })
    --         -- or setup({ use_treesitter = true })
    --     end,
    --     ft = "tex",
    -- }

end)
