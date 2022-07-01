return require('packer').startup(function()
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
end)

