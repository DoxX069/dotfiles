return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      require("telescope").load_extension("ui-select")
    end,
    keys = {
      {
        "<leader>ff",
        "<cmd>Telescope find_files<CR>",
        desc = "Find files",
      },
      {
        "<leader>fg",
        "<cmd>Telescope live_grep<CR>",
        desc = "Live grep (search in files)",
      },
      {
        "<leader>fo",
        "<cmd>Telescope oldfiles<CR>",
        desc = "Open recent files",
      },
    }
  },
}
