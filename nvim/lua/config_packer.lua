local vim = vim
local use = require('packer').use

require('packer').startup(function()

  use 'wbthomason/packer.nvim' -- package manager

  use 'craftzdog/solarized-osaka.nvim' -- theme

  use 'williamboman/mason.nvim' -- external editor tooling 

  use {'neoclide/coc.nvim', branch = 'release'} -- autocomplete

  use { 'junegunn/fzf', run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'

  use 'psliwka/vim-smoothie' -- smooth scroll
  use 'miyakogi/conoline.vim' -- highlight current line
  use 'Yggdroot/indentLine' -- show line indentation
  use 'mhinz/vim-startify' -- nvim startscreen
  use 'ap/vim-css-color' -- show css colors
  use 'justinmk/vim-sneak' -- jump on the page
  use 'mhinz/vim-signify' -- highlight changed rows
  use 'petertriho/nvim-scrollbar' -- scrollbar
  use 'RRethy/vim-illuminate' -- highlight identical words
  use 'wellle/context.vim' -- show context
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'} -- folding code

  use 'evanleck/vim-svelte' -- svelte plugin
  use 'fatih/vim-go' -- golang

  use { -- telescope
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  } -- tab bar

  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  }) -- create files and folders

end)
