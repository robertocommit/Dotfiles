-- Install Packer https://github.com/wbthomason/packer.
-- Install packages with :PackerSync
-- Install https://github.com/neovim/nvim-lspconfig
-- Install https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- Enable completition https://github.com/hrsh7th/nvim-cmp

local vim = vim
local use = require('packer').use
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

require('packer').startup(function()
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use { -- fuzzy search
    "junegunn/fzf",
    run = function()
      vim.fn["fzf#install"]()
    end
  }
  use "junegunn/fzf.vim"
  use 'wbthomason/packer.nvim' -- package manager
  use 'psliwka/vim-smoothie' -- smooth scroll
  use 'b3nj5m1n/kommentary' -- comment code
  use 'vim-airline/vim-airline' -- bottom info bar
  use 'miyakogi/conoline.vim' -- highlight current line
  use 'tpope/vim-surround' -- manage surrounded text
  use 'Yggdroot/indentLine' -- show line indentation
  use 'mhinz/vim-startify' -- nvim startscreen
  use 'ap/vim-css-color' -- show css colors
  use 'justinmk/vim-sneak' -- jump on the page
  use 'preservim/vim-pencil' -- tools for writing
  use 'projekt0n/github-nvim-theme' -- theme
  use 'airblade/vim-gitgutter' -- show git icons on left
  use 'danilamihailov/beacon.nvim' -- show cursor when moving
  use 'fatih/vim-go' -- golang
  use { -- tabbar
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use 'evanleck/vim-svelte' -- svelte plugin
end)

require('github-theme').setup()
require'lspconfig'.pyright.setup{}
require'lspconfig'.golangci_lint_ls.setup{}
require'lspconfig'.tsserver.setup{}

-- :LspInstall <language-server>
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local opts2 = {}
  server:setup(opts2)
end)

-- Keyboard mapping
map('n', '<c-s>', ':w<CR>', opts)
map('i', '<c-s>', '<Esc>:w<CR>', opts)
map('v', '<c-s>', '<Esc>:w<CR>', opts)
map('n', '<up>', '<C-w>k', opts)
map('n', '<down>', '<C-w>j', opts)
map('n', '<left>', '<C-w>h', opts)
map('n', '<right>', '<C-w>l', opts)
map('i', '<C-y>', '<C-u>', opts)
map('i', '<C-x>', '<C-w>', opts)
map('i', '<C-c>', '<C-o>de', opts)

-- Tabbar
map('n', '<C-o>', ':BufferPrevious<CR>', opts)
map('n', '<C-p>', ':BufferNext<CR>', opts)
map('n', '<C-k>', ':BufferMovePrevious<CR>', opts)
map('n', '<C-l>', ':BufferMoveNext<CR>', opts)
map('n', '<C-q>', ':bd!<CR>', opts)

-- Exit terminal mode
map('t', '<ESC>', '<C-\\><C-n>', opts)

-- FZF
map('n', 'ff', ':Files<CR>', opts)
map('n', 'fg', ':Rg<CR>', opts)

-- Gitglutter
vim.g['gitgutter_sign_added'] = '+'
vim.g['gitgutter_sign_modified'] = '>'
vim.g['gitgutter_sign_removed'] = '-'
vim.g['gitgutter_sign_removed_first_line'] = '^'
vim.g['gitgutter_sign_modified_removed'] = '<'

-- Keep cursor centered when searching
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

-- Settings
vim.opt.number=true
vim.opt.mouse="a"
vim.opt.relativenumber=true
vim.opt.showmode=true
vim.opt.showcmd=true
vim.opt.textwidth=120
vim.opt.cmdheight=1
vim.opt.showmatch=true
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true
vim.opt.smartindent=true
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.wrapscan=true
vim.opt.conceallevel=1
vim.opt.scrolloff=3
vim.opt.sidescrolloff=999
vim.opt.scrolloff=999
vim.opt.encoding="utf-8"
vim.opt.fileencoding="utf-8"
vim.o.clipboard = "unnamedplus"

local cmp = require'cmp'

  cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
