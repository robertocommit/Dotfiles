local vim = vim
local use = require('packer').use

require('packer').startup(function()
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use { -- telescope
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'junegunn/fzf', run = ":call fzf#install()" }
  use { 'junegunn/fzf.vim' }

  use 'wbthomason/packer.nvim' -- package manager
  use 'psliwka/vim-smoothie' -- smooth scroll
  use 'b3nj5m1n/kommentary' -- comment code
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  } -- bottom info bar
  use 'miyakogi/conoline.vim' -- highlight current line
  use 'tpope/vim-surround' -- manage surrounded text
  use 'Yggdroot/indentLine' -- show line indentation
  use 'mhinz/vim-startify' -- nvim startscreen
  use 'ap/vim-css-color' -- show css colors
  use 'justinmk/vim-sneak' -- jump on the page
  use 'preservim/vim-pencil' -- tools for writing
  use 'mhinz/vim-signify' -- highlight changed rows
  use 'danilamihailov/beacon.nvim' -- show cursor when moving
  use 'fatih/vim-go' -- golang
  use { -- tabbar
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use 'evanleck/vim-svelte' -- svelte plugin
  use "iamcco/markdown-preview.nvim" -- show markdown in browser
  use 'mzlogin/vim-markdown-toc' -- generate table of content
  use 'petertriho/nvim-scrollbar' -- scrollbar
  use 'mattn/emmet-vim' -- html utilities
  use 'RRethy/vim-illuminate' -- highlight identical words
  use 'wellle/context.vim' -- show context
  use 'majutsushi/tagbar' -- show tags
  use 'lvht/tagbar-markdown' -- show tags in markdown
  use {'neoclide/coc.nvim', branch = 'release'} -- autocomplete
  use 'jghauser/mkdir.nvim' -- create directory
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
  use {'nvim-treesitter/nvim-treesitter'} -- parse code to extract its structure
  use {'craftzdog/solarized-osaka.nvim'}
  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  })
end)

require('ufo').setup()
require("oil").setup()
