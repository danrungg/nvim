return {
	"echasnovski/mini.files",
	keys = {
		{
			"<leader>fe",
			function()
				require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
			end,
			desc = "File Explorer (at current file)",
		},
		{
			"<leader>fE",
			function()
				require("mini.files").open(vim.uv.cwd(), true)
			end,
			desc = "File Explorer (at project root)",
		},
	},
}
