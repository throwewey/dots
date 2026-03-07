return {
 
	'Everblush/nvim', name = 'everblush',
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme everblush]])
		-- Everblush green variants for line numbers
		vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#50754E' })
		vim.api.nvim_set_hl(0, 'LineNr', { fg = '#8CCF7E' }) 
		vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#50754E' })
	end,
}
