require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {"tsserver"}
})

local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({})
lspconfig.svelte.setup({})
