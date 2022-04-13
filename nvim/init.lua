-- 
require('packer').startup(function()
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'junegunn/fzf.vim'
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-fugitive'
  use 'psliwka/vim-smoothie'
  use 'b3nj5m1n/kommentary'
  use 'pseewald/vim-anyfold'
  use 'vim-airline/vim-airline'
  use 'pacha/vem-tabline'
  use 'ryanoasis/vim-devicons'
  use 'miyakogi/conoline.vim'
  use 'tpope/vim-surround'
  use 'Yggdroot/indentLine'
  use 'mhinz/vim-startify'
  use 'ap/vim-css-color'
  use 'voldikss/vim-floaterm'
  use 'justinmk/vim-sneak'
  use 'haya14busa/incsearch.vim'
  use 'preservim/vim-pencil'
  use 'projekt0n/github-nvim-theme'
  use 'airblade/vim-gitgutter'
  use 'danilamihailov/beacon.nvim'
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use 'ms-jpq/coq_nvim'
  use 'evanleck/vim-svelte'
end)

require('github-theme').setup()
require'lspconfig'.pyright.setup{}

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<c-s>', ':w<CR>', opts)
map('i', '<c-s>', '<Esc>:w<CR>', opts)
map('v', '<c-s>', '<Esc>:w<CR>', opts)
map('n', '<up>', '<C-w>k', opts)
map('n', '<down>', '<C-w>j', opts)
map('n', '<left>', '<C-w>h', opts)
map('n', '<right>', '<C-w>l', opts)
map('i', '<C-y>', '<C-u>', opts)
map('i', '<C-x>', '<C-w>', opts)

-- Keep cursor centered when searching
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

-- Floaterm
map('n', '<C-A-n>', ':FloatermNew<CR>', opts)
map('t', '<C-A-h>', ':FloatermHide<CR>', opts)
map('n', '<C-A-s>', ':FloatermShow<CR>', opts)
map('n', '<C-A-p>', ':FloatermNext<CR>', opts)
map('n', '<C-A-o>', ':FloatermPrev<CR>', opts)
vim.g['floaterm_width'] = 0.9
vim.g['floaterm_height'] = 0.85

-- Tabbar
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)

-- FZF
map('n', 'ff', ':Files<CR>', opts)
map('n', 'fg', ':Rg<CR>', opts)

-- Gitglutter
vim.g['gitgutter_sign_added'] = '+'
vim.g['gitgutter_sign_modified'] = '>'
vim.g['gitgutter_sign_removed'] = '-'
vim.g['gitgutter_sign_removed_first_line'] = '^'
vim.g['gitgutter_sign_modified_removed'] = '<'

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

--[[ vim.api.nvim_set_keymap("n", "<c-c>", '"*y :let @+=@*<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<c-v>", '"+p', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<c-c>", '"*y :let @+=@*<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<c-c>", '"*y :let @+=@*<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<c-v>", '"+p', {noremap=true, silent=true})
vim.api.nvim_set_keymap("v", "<c-v>", '"+p', {noremap=true, silent=true}) ]]

local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
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
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  --[[ -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['gopls'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  } ]]
