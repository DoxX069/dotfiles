-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
keys = {
  {
    "n",
    "<leader>p",
    "<cmd>:LiveServerStart<CR>",
    desc = "Start Live Server",
  },
  {
    "<leader>t",
    false,
  },
  {
    "n",
    "<leader>tt",
    "<cmd>ToggleTerm<CR>",
    desc = "ToggleTerm",
  },
  {
    "n",
    "<leader>gg",
    "<cmd>LazyGit<CR>",
    desc = "LazyGit",
  },
}
