-- lua/plugins/completions.lua

return {
	"saghen/blink.cmp",
	dependencies = {
		"hrsh7th/nvim-cmp",
		"rafamadriz/friendly-snippets",
	},
	opts = {
		keymap = {
			preset = "default",
			["<Tab>"] = { "accept", "fallback" },

			["<C><leader>"] = { "show" },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = { documentation = { auto_show = true } },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
