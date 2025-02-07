local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

--Own Keybinds

--Save file with Control + S
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })

--Leave file with Control + Q
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-q>", "<Esc>:q<CR>", { noremap = true, silent = true })

--Open Lazy
vim.keymap.set("n", "<leader>la", ":Lazy<CR>", { noremap = true, silent = true })
