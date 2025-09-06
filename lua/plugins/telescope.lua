-- plugins/telescope.lua

return {
	"nvim-telescope/telescope.nvim",
	keys = {
		{
			"<leader><leader>",
			function()
				local function find_git_root()
					local git_root = vim.fs.find({ ".git" }, { upward = true, stop_at = vim.fn.expand("~") })[1]
					if git_root then
						return vim.fn.fnamemodify(git_root, ":h")
					end
					return vim.uv.cwd()
				end

				require("telescope.builtin").find_files({ cwd = find_git_root() })
			end,
			desc = "Find File",
		},
		{
			"<leader>sg",
			function()
				local function find_git_root()
					local git_root = vim.fs.find({ ".git" }, { upward = true, stop_at = vim.fn.expand("~") })[1]
					if git_root then
						return vim.fn.fnamemodify(git_root, ":h")
					end
					return vim.uv.cwd()
				end

				require("telescope.builtin").live_grep({ cwd = find_git_root() })
			end,
			desc = "Search with Grep",
		},
	},
	lazy = false,
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		require("telescope").load_extension("ui-select")
	end,
}
