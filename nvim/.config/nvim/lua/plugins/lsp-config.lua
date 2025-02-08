return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
    end,
    keys = {
      {
        "K",
        "<cmd>lua vim.lsp.buf.hover()<CR>",
        desc = "Documentation for the symbol (hover)",
      },
      {
        "<leader>gd",
        "<cmd>lua vim.lsp.buf.definition()<CR>",
        desc = "Definition of the symbol",
      },
      {
        "<leader>gr",
        "<cmd>lua vim.lsp.buf.references()<CR>",
        desc = "References to the symbol",
      },
      {
        "<leader>ca",
        "<cmd>lua vim.lsp.buf.code_action()<CR>",
        desc = "Code actions (e.g., refactoring, fixes)",
      },
      {
        "<leader>rn",
        "<cmd>lua vim.lsp.buf.rename()<CR>",
        desc = "Rename the symbol",
      },
      {
        "<space>rn",
        "<cmd>lua vim.lsp.buf.rename()<CR>",
        desc = "Rename the symbol",
      },
      {
        "<leader>m",
        "<cmd>Mason<CR>",
        desc = "Open Mason",
      },
    },
  },
}
