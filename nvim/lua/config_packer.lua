local vim = vim
local use = require('packer').use

require('packer').startup(function()

  use "nvim-lua/plenary.nvim"

  use 'wbthomason/packer.nvim' -- package manager

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  } -- lsp
  
  use 'nvim-treesitter/nvim-treesitter' -- syntax highlight

  use 'craftzdog/solarized-osaka.nvim' -- theme

  use {'neoclide/coc.nvim', branch = 'release'} -- autocomplete

  use { 'junegunn/fzf', run = ":call fzf#install()" } -- searching files
  use 'junegunn/fzf.vim' -- searching files

  use 'psliwka/vim-smoothie' -- smooth scroll
  use 'miyakogi/conoline.vim' -- highlight current line
  use 'Yggdroot/indentLine' -- show line indentation
  use 'mhinz/vim-startify' -- nvim startscreen
  use 'ap/vim-css-color' -- show css colors
  use 'mhinz/vim-signify' -- highlight changed rows
  use 'wellle/context.vim' -- show context
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'} -- folding code

  use 'justinmk/vim-sneak' -- jump on the page

  use 'evanleck/vim-svelte' -- svelte plugin
  use 'fatih/vim-go' -- golang

  use { -- telescope
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  } -- comment code

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

  use 'mbbill/undotree' -- undo tree

  use ({ -- dbt plugin
    "PedramNavid/dbtpal",
    requires = {
      { 
        "nvim-lua/plenary.nvim" 
      }, { 
        "nvim-telescope/telescope.nvim" 
      } 
    },
    config = function()
      require("dbtpal").setup({
        path_to_dbt = "/opt/homebrew/bin/dbt",
        path_to_dbt_project = "/Users/roberto/Code/Partners/Etiql/dbt",
        path_to_dbt_profiles_dir = "/Users/roberto/.dbt",
        extended_path_search = true,
        protect_compiled_files = true
      })
      require("telescope").load_extension("dbtpal")
    end
  })

end)
