return {
  "anurag3301/nvim-platformio.lua",
  dependencies = {
    "akinsho/toggleterm.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "folke/which-key.nvim",
  },
  config = function()
    require("platformio").setup {
      lsp = "clangd",
      menu_key = "<leader>p",
    }
  end,
}
