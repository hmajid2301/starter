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
  {
    "NvChad/nvim-colorizer.lua",
    opts = {},
    config = function(_, opts)
      require("colorizer").setup(opts)

      -- execute colorizer as soon as possible
      vim.defer_fn(function()
        require("colorizer").attach_to_buffer(0)
      end, 0)
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    event = "VeryLazy",
    opts = {},
  },
}
