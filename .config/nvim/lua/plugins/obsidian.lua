return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	ft = "markdown",
	---@module 'obsidian'
	---@type obsidian.config
	dependencies = {
		{
		'nvim-telescope/telescope.nvim', 
		version = "*",
		},
		'nvim-lua/plenary.nvim',
	},
	opts = {
		legacy_commands = false,
		workspaces = {
			{
			name = "personal",
			path = "~/personal/vault",
			},
			{
			name = "work",
			path = "~/work/vault",
			}
		}
	}
}
