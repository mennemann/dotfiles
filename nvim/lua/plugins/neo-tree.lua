return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			filesystem = {
				filtered_items = {
					visible = true,
				},
			},
			window = {
				mappings = {
					["<leader>e"] = "close_window",
				},
			},
		})
		vim.keymap.set("n", "<leader>e", ":Neotree reveal last<CR>")
	end,
}
