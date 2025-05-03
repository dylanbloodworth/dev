-- [[ Setting options ]]
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

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true --  See `:help 'list'`
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" } --  and `:help 'listchars'`

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.opt.confirm = true -- See `:help 'confirm'`
