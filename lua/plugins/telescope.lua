return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
        require("telescope").load_extension("undo")
        require("telescope").load_extension("zoxide")
      end,
      "jvgrootveld/telescope-zoxide",
      "debugloop/telescope-undo.nvim",
    },
    opts = function(_, opts)
      opts.extensions = {
        zoxide = {
          prompt_title = " Projects List",
        },
      }
    end,
  },
}
