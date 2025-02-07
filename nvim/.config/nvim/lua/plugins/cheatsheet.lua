return {
  'sudormrfbin/cheatsheet.nvim',

  requires = {
    {'nvim-telescope/telescope.nvim'},
    {'nvim-lua/popup.nvim'},
    {'nvim-lua/plenary.nvim'},
  },
  config = function()
		vim.keymap.set("n", "<leader>ch", ":Cheatsheet<CR>", {})
	end,
}
