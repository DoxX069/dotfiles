return {
  'sudormrfbin/cheatsheet.nvim',

  requires = {
    {'nvim-telescope/telescope.nvim'},
    {'nvim-lua/popup.nvim'},
    {'nvim-lua/plenary.nvim'},
  },
  keys = {
    {
      "<leader>ch",
      "<cmd>Cheatsheet<CR>",
      desc = "Cheatsheet"
    }
  }
}
