return {
  "danymat/neogen",
  dependencies = { "L3MON4D3/LuaSnip", "nvim-treesitter/nvim-treesitter" },
  cmd = "Neogen",
  keys = {
    { "<leader>cg", function() require("neogen").generate() end, desc = "📄 Generate Doxygen" },
  },
  opts = {
    snippet_engine = "luasnip",
    languages = {
      cpp = { template = { annotation_convention = "doxygen" } },
      c   = { template = { annotation_convention = "doxygen" } },
    },
  },
}
