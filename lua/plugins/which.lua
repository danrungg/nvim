-- plugins/which.lua

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		spec = {
			{ "<leader>f", group = "File", icon = { icon = "", color = "blue" } },
			{ "<leader>s", group = "Search", icon = { icon = "", color = "orange" } },
			{ "<leader>l", group = "LSP", icon = { icon = "", color = "cyan" } },
			{ "<leader>t", group = "Test", icon = { icon = "󰙨", color = "green" } },
			{ "<leader>x", group = "Diagnostics", icon = { icon = "", color = "red" } },
			{ "<leader>c", group = "Code", icon = { icon = "", color = "purple" } },
		},
	},
}
