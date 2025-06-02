return { -- collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		-- better around/inside textobjects
		--
		-- examples:
		--  - va)  - [v]isually select [a]round [)]paren
		--  - yinq - [y]ank [i]nside [n]ext [q]uote
		--  - ci'  - [c]hange [i]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [s]urround [a]dd [i]nner [w]ord [)]paren
		-- - sd'   - [s]urround [d]elete [']quotes
		-- - sr)'  - [s]urround [r]eplace [)] [']
		require("mini.surround").setup()

		-- simple and easy statusline.
		--  you could remove this setup call if you don't like it,
		--  and try some other statusline plugin
		local statusline = require("mini.statusline")
		-- set use_icons to true if you have a nerd font
		statusline.setup({ use_icons = vim.g.have_nerd_font })

		-- you can configure sections in the statusline by overriding their
		-- default behavior. for example, here we set the section for
		-- cursor location to line:column
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end

		-- ... and there is more!
		--  check out: https://github.com/echasnovski/mini.nvim
	end,
}
