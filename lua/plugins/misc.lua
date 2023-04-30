return {
  -- {
  --   "Pocco81/auto-save.nvim",
  --   opts = { debounce_delay = 10000, trigger_events = { "InsertLeave" } },
  -- },

  {
    "max397574/better-escape.nvim",
    event = "InsertCharPre",
    opts = { timeout = 300 },
  },
}
