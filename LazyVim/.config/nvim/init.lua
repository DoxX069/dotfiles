-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Ensure SSH agent is available in Neovim
vim.env.SSH_AUTH_SOCK = vim.fn.expand("$SSH_AUTH_SOCK")
