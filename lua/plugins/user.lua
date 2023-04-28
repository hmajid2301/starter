return {
  -- add colortheme
  {
    "hmajid2301/nvim-catppuccin",
    branch = "add-alpha",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavor = "frappe",
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