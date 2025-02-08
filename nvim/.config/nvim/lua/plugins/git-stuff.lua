return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
		keys = {
			{
				"<leader>gp",
				"<cmd>Gitsigns preview_hunk<CR>",
				desc = "Preview the current hunk (Git changes)",
			},
			{
				"<leader>gt",
				"<cmd>Gitsigns toggle_current_line_blame<CR>",
				desc = "Toggle Git blame for the current line",
			},
		},
	},
}
