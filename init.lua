vim.opt.number = true
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.list = true
vim.opt.listchars = "tab:  ,trail: ,nbsp: ,lead:·"
vim.opt.scrolloff = 2

require("catppuccin").setup{
	flavour = "macchiato",
	dim_inactive = {
		enabled = true,
	},
	styles = {
		comments = {},
		conditionals = {},
	},
	integrations = {
		indent_blankline = {
			enabled = true,
		},
	},
}

vim.cmd.colorscheme("catppuccin-macchiato")

local ibl_highlight = {
    "CursorLine",
    "ColorColumn",
}
local ibl_hooks = require "ibl.hooks"
ibl_hooks.register(ibl_hooks.type.SKIP_LINE, function(_, _, _, line)
    return #line == 0
end)
require("ibl").setup{
	viewport_buffer = {
		min = 150,
	},
	indent = {
		highlight = ibl_highlight,
		char = "",
		tab_char = "⇥",
	},
	whitespace = {
		highlight = ibl_highlight,
	},
	scope = {
		enabled = false,
	},
}
