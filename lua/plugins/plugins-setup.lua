-- Automatically install packer.nvim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand for setting setup
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerInstall
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'  --framework
  use 'folke/tokyonight.nvim' --theme
  use {
    'nvim-lualine/lualine.nvim',  --nvim line
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }  --nvim line icons 
  }
  use {
    'nvim-tree/nvim-tree.lua',  --file tree
    requires = {
      'nvim-tree/nvim-web-devicons',  --file tree icons
    }
  }
  use 'christoomey/vim-tmux-navigator'  --use ctl+hjkl to nav windows
  use 'nvim-treesitter/nvim-treesitter'  --syntax highlight 
  use 'p00f/nvim-ts-rainbow' --with syntax-hl to diff bracket

  --lspconfig
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  --autocmp
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  use('rafamadriz/friendly-snippets')
  use('hrsh7th/cmp-path')

  use('numToStr/Comment.nvim')
  use('windwp/nvim-autopairs')

  use('akinsho/bufferline.nvim')
  use('lewis6991/gitsigns.nvim')

  if packer_bootstrap then
    require('packer').sync()
  end
end)
