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
  {
    "xiyaowong/transparent",
    lazy = false,
  },
}
