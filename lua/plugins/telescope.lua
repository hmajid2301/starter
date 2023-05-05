return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
      "jvgrootveld/telescope-zoxide",
      "debugloop/telescope-undo.nvim",
    },
    config = function()
      require("telescope").load_extension("undo")
      require("telescope").load_extension("zoxide")
    end,
    opts = function(_, opts)
      opts.extensions = {
        zoxide = {
          prompt_title = " Projects List",
        },
        undo = {
          side_by_side = true,
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.8,
          },
        },
      }
    end,
  },
}
