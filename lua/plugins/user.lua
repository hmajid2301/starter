return {
  -- add colortheme
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "frappe",
      integrations = {
        alpha = true,
        dap = { enabled = true, enable_ui = true },
        mason = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        symbols_outline = true,
        telescope = true,
        lsp_trouble = true,
        which_key = true,
      }
    },
  },

  -- Configure LazyVim to load theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  {
    "Pocco81/auto-save.nvim",
    opts = {},
  },
}
