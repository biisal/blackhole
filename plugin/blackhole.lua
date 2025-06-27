vim.api.nvim_create_user_command('Blackhole', function(opts)
	require('blackhole').setup(opts.args and { transparent = opts.args == 'transparent' } or {})
end, {
	nargs = '?',
	complete = function()
		return { 'transparent' }
	end,
})
