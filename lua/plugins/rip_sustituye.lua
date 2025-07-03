return {
  "chrisgrieser/nvim-rip-substitute",
  -- ① carga perezosa: sólo cuando llames al comando o al keymap
  cmd = "RipSubstitute",
  keys = {
    {
      "<leader>fs",        -- <Space> f s
      function() require("rip-substitute").sub() end,
      mode = { "n", "x" }, -- normal & visual
      desc = " rip substitute",
    },
  },

  -- ② (opcional) ajustes — aquí vacíos ⇒ usa valores por defecto
  opts = {},

  -- ③ si prefieres un bloque config en vez de opts vacíos:
  -- config = function() require("rip-substitute").setup() end,
}
