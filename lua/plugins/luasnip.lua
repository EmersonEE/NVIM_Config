return {
  "L3MON4D3/LuaSnip",
  version = "2.*",
  build = "make install_jsregexp",
  event = "InsertEnter",
  config = function()
    local ls = require("luasnip")
    ls.config.set_config({
      region_check_events = "CursorHold,InsertLeave",
      delete_check_events = "TextChanged,InsertEnter",
    })

    local map = vim.keymap.set
    -- Salta entre nodos del snippet con Tab / Shift-Tab
    map({ "i", "s" }, "<Tab>", function()
      if ls.jumpable(1) then ls.jump(1) else vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false) end
    end, { silent = true })
    map({ "i", "s" }, "<S-Tab>", function()
      if ls.jumpable(-1) then ls.jump(-1) end
    end, { silent = true })
  end,
}
