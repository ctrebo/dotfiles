-- Note that vim-airline and airline themes are installed manually

local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'overcache/NeoSolarized'
  use { "ellisonleao/gruvbox.nvim" }
  use "drewtempelmeyer/palenight.vim" use 'xiyaowong/nvim-transparent'
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'vim-airline/vim-airline-themes'
  use 'vim-airline/vim-airline'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  -- use 'github/copilot.vim'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use 'tpope/vim-commentary' -- comment out lines with gcc/gc

  -- Lsp plugins 
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/nvim-cmp' -- Auto completion
  use 'hrsh7th/cmp-buffer' -- Auto completion
  use 'hrsh7th/cmp-nvim-lsp' -- Auto completion
  use 'L3MON4D3/LuaSnip'
  
  -- Other useful plugins
  use 'mattn/emmet-vim'
  use 'tpope/vim-surround'

  -- Python indent
  use 'Vimjas/vim-python-pep8-indent'
  
  -- Match html tags
  use 'AndrewRadev/tagalong.vim'

  use 'tpope/vim-fugitive'
  use { "nathom/filetype.nvim" } -- Replacement for filetype nvim
  use 'lewis6991/impatient.nvim' -- performance
end)
