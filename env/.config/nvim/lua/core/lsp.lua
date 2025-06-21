vim.lsp.enable({
	"bashls",
	"lua_ls",
	"gopls",
	"pyright",
	"astro",
	"html",
})

-- See :h vim.diagnostic.Opts for the list of options
vim.diagnostic.config({
	virtual_lines = true,
	severity_sort = true,
})
