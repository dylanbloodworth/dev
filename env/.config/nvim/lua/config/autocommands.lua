-- [[ Basic Aucommands ]]
--  See `:help lua-guide-aucommands`

--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local map = function(keys, func, desc)
			vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end

		map("K", vim.lsp.buf.hover, "Hover Documentation")
		map("<leader>ld", vim.lsp.buf.definition, "Find [D]efinition")
		map("<leader>lD", vim.lsp.buf.definition, "Find [D]eclaration")
		map("<leader>la", vim.lsp.buf.code_action, "Code [A]ction")
		map("<leader>lr", vim.lsp.buf.references, "Find [R]eferences")
		map("<leader>ln", vim.lsp.buf.rename, "Re-[N]ame")
		map("<leader>li", vim.lsp.buf.implementation, "Find [I]mplementations")
	end,
})
