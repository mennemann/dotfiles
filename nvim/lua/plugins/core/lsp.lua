return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		require("mason").setup()

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "ruff", "pyright", "clangd", "ltex" },
		})

		require("mason-lspconfig").setup_handlers({
			function(server)
				lspconfig[server].setup({
					capabilities = capabilities,
				})
			end,
			["ruff"] = function()
				lspconfig.ruff.setup({
					capabilities = capabilities,
					init_options = {
						settings = {
							lint = {
								select = { "ALL" },
                                ignore = { "D", "CPY", "F401", "E501", "S101", "PLR2004", "ANN", "C901", "T20", "FA", "PLR0911", "PLR0912", "E303", "E225", "E226", "E227", "E228", "E231", "FBT", "ERA", "S311", "ARG" },
							},
						},
					},
				})
			end,
		})

		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
