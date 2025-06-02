-- [[ Setting options ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

-- Sync clipboard between OS and Neovim with the package wl-clipboard
--  See `:help 'clipboard'`
vim.g.clipboard = {
	name = "wl-clipboard",
	copy = {
		["+"] = "wl-copy --foreground --type text/plain",
		["*"] = "wl-copy --foreground --primary --type text/plain",
	},
	paste = {
		["+"] = "wl-paste --no-newline --type text/plain",
		["*"] = "wl-paste --no-newline --primary --type text/plain",
	},
	cache_enabled = true,
}
-- See `:help vim.opt
-- For more options, you can see `:help option-list`

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.undofile = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.path:append("**")

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true --  See `:help 'list'`
vim.opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" } --  and `:help 'listchars'`

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.opt.confirm = true -- See `:help 'confirm'`
