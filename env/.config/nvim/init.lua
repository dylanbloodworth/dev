--[[
Lua Syntax Guide:
      - https://learnxinyminutes.com/docs/lua/
Neovim-Lua Integration Documentation:
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html
Nvim help:
    - :Tutor
    - :help
    - "<leader>sh" [s]earch the [h]elp documentation
--]]

require("config.options")
require("core.lazy")
require("config.keymaps")
require("config.autocommands")
