return {
	{
		"telescope.nvim",
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
			local actions = require("telescope.actions")
			local trouble = require("trouble.providers.telescope")

			return vim.list_extend(opts, {
				extensions = {
					zoxide = {
						prompt_title = " Projects List",
					}
				},
				mappings = {
					i = { ["<c-t>"] = trouble.open_with_trouble },
					n = { ["<c-t>"] = trouble.open_with_trouble },
				}
			})
		end
	},
}
