-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
 
  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Minimalist
  use ({
	'dikiaap/minimalist',
	as = 'minimalist',
	config = function()
		vim.cmd('colorscheme minimalist')
	end
  })

  -- TreeSitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- UndoTree
  use('mbbill/undotree')

  -- VimFugitive
  use('tpope/vim-fugitive')
end)
