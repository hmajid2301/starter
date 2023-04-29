return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "frappe",
      integrations = {
        alpha = true,
        barbecue = true,
        dap = { enabled = true, enable_ui = true },
        harpoon = true,
        gitsigns = true,
        mason = true,
        neotree = true,
        neotest = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        symbols_outline = true,
        treesitter = true,
        treesitter_context = true,
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
}
