require("mason").setup()

-- require("mason-lspconfig").setup({
--   ensure_installed = {"tsserver", "svelte", "gopls"},
-- })
--
require("mason-lspconfig").setup({
  ensure_installed = {"svelte", "gopls"},
})

local lspconfig = require("lspconfig")
-- lspconfig.tsserver.setup({})
lspconfig.svelte.setup({})
lspconfig.gopls.setup({})
