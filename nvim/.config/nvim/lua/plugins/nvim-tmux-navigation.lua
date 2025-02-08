return {
	"alexghergh/nvim-tmux-navigation",
	config = function()
		require("nvim-tmux-navigation").setup({})
	end,
	keys = {
		{
			"<leader>wh",
			"<cmd>NvimTmuxNavigateLeft<CR>",
			desc = "Navigate to left pane (Neovim/Tmux)",
		},
		{
			"<leader>wj",
			"<cmd>NvimTmuxNavigateDown<CR>",
			desc = "Navigate to bottom pane (Neovim/Tmux)",
		},
		{
			"<leader>wk",
			"<cmd>NvimTmuxNavigateUp<CR>",
			desc = "Navigate to top pane (Neovim/Tmux)",
		},
		{
			"<leader>wl",
			"<cmd>NvimTmuxNavigateRight<CR>",
			desc = "Navigate to right pane (Neovim/Tmux)",
		},
	},
}
