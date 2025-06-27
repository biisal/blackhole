local M = {}

local defaults = {
	transparent = false,
}

function M.setup(opts)
	opts = vim.tbl_deep_extend("force", defaults, opts or {})
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = "blackhole"
	local highlights = require('blackhole.highlights').get_highlights(opts)
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

M.colors = require('blackhole.colors').colors
return M
