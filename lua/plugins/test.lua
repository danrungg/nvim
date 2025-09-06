return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"zidhuss/neotest-minitest",
	},
	keys = {
		{ "<leader>tr", "<cmd>Neotest run<cr>", desc = "Run Test" },
		{ "<leader>to", "<cmd>Neotest output<cr>", desc = "Test Output" },
		{ "<leader>ts", "<cmd>Neotest summary<cr>", desc = "Test Summary" },
		{ "<leader>tA", "<cmd>lua require('neotest').run.run({ suite = true })<cr>", desc = "Test All (Suite)" },
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-minitest"),
			},
		})
	end,
}
