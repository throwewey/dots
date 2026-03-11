return {
 
	'Everblush/nvim', name = 'everblush',
	lazy = false,
	priority = 1000,
	opts = {
		transparent_background = true,
		override = {
			LineNrAbove = 	{ fg = '#50754E'},
			LineNr = 	{ fg = '#8CCF7E'},
			LineNrBelow = 	{ fg = '#50754E'},
		}
	}
}
