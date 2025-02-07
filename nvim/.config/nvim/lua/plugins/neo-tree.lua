return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
  keys = {
    {
      "<leader>n",
      "<cmd>Neotree toggle reveal right<CR>",
      desc = "File Manager (Neotree)"
    },
    {
      "<leader>Nb",
      "<cmd>Neotree buffers reveal float<CR>",
      desc = "File Manager Buffers(Neotree)"
    }
  }
}
