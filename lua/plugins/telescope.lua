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
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup({
			extensions = {
				fzf = {
					fuzzy = true, -- Enable fuzzy finding
					override_generic_sorter = true, -- Use fzf over the generic sorter
					override_file_sorter = true, -- Use fzf for file sorting
					case_mode = "smart_case", -- Be case-insensitive unless a capital letter is used
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
	end,
}
