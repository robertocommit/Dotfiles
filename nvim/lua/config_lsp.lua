require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {"tsserver"}
})

local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({})
lspconfig.svelte.setup{
  cmd = { "yarn", "svelteserver", "--stdio" };
  on_attach = on_attach;
  settings = {
    svelte = {
      plugin = {
        svelte = {
          compilerWarnings = {
            ["a11y-no-onchange"] = "ignore"
          }
        }
      }
    }
  }
}
