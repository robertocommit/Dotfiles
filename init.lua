-- Install Packer https://github.com/wbthomason/packer.
-- Install packages with :PackerSync
-- Install https://github.com/neovim/nvim-lspconfig
-- Install https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- Enable completition https://github.com/hrsh7th/nvim-cmp

require("config_packer")
require("config_completion")
require("config_lspinstaller")
require("config_settings")
require("config_mappings")
require("config_self")
require("github-theme").setup()
require("scrollbar").setup()
require("lspconfig").pyright.setup{}
require("lspconfig").golangci_lint_ls.setup{}
require("lspconfig").tsserver.setup{}
