vim.keymap.set("n", "<leader>", "<nop>")

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local map = vim.keymap.set

		map("n", "<leader>ld", vim.lsp.buf.definition, { buffer = ev.buf, desc = "LSP: Go to Definition" })
		map("n", "<leader>lh", vim.lsp.buf.hover, { buffer = ev.buf, desc = "LSP: Hover Documentation" })
		map("n", "<leader>li", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "LSP: Go to Implementation" })
		map("n", "<leader>lt", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "LSP: Go to Type Definition" })
		map("n", "<leader>lR", vim.lsp.buf.references, { buffer = ev.buf, desc = "LSP: Show References" }) -- War 'gr'
		map("n", "<leader>lr", vim.lsp.buf.rename, { buffer = ev.buf, desc = "LSP: Rename Symbol" }) -- War 'gr'
		map({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { buffer = ev.buf, desc = "LSP: Code Action" })

		map("n", "<leader>fF", function()
			vim.lsp.buf.format({ async = true })
		end, { buffer = ev.buf, desc = "Format File" })

		map("n", "<leader>xd", function()
			vim.diagnostic.open_float({
				border = "rounded",
			})
		end, { buffer = ev.buf, desc = "Show Line Diagnostics" })
	end,
})
