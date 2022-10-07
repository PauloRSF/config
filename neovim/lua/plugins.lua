require('packer').startup(function()
  -- packer itself 
  use 'wbthomason/packer.nvim'

  -- theme
  use 'folke/tokyonight.nvim'

	-- completion
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- tabs
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- bracket pairs
  use 'jiangmiao/auto-pairs'

  -- good ol' telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Rusty goods
  use 'rust-lang/rust.vim'

  -- Visual feedback for git status
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Comment stuff out
  use "terrortylor/nvim-comment"
end)

-- Initialize plugins

require("nvim-tree").setup()                                                                                            
require('nvim_comment').setup({comment_empty = false})

