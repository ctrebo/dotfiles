-- Note that vim-airline and airline themes are installed manually
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  {
    'svrana/neosolarized.nvim',
    dependencies = { 'tjdevries/colorbuddy.nvim' }
  },

  'overcache/NeoSolarized',
  { "ellisonleao/gruvbox.nvim" },
  "drewtempelmeyer/palenight.vim" 'xiyaowong/nvim-transparent',
  'nvim-lua/plenary.nvim', -- Common utilities
  'vim-airline/vim-airline-themes',
  'vim-airline/vim-airline',

  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  'kyazdani42/nvim-web-devicons', -- File icons
  {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  'nvim-telescope/telescope-file-browser.nvim',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  'norcalli/nvim-colorizer.lua',
  'folke/zen-mode.nvim',
  ({
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  }),
  -- 'github/copilot.vim'

  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim', -- For git blame & browse

  'tpope/vim-commentary', -- comment out lines with gcc/gc

  -- Lsp plugins 
  'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
  'onsails/lspkind.nvim',
  'hrsh7th/nvim-cmp', -- Auto completion
  'hrsh7th/cmp-buffer', -- Auto completion
  'hrsh7th/cmp-nvim-lsp', -- Auto completion
  'L3MON4D3/LuaSnip',
  
  -- Other useful plugins
  'mattn/emmet-vim',
  'tpope/vim-surround',

  -- Python indent
  'Vimjas/vim-python-pep8-indent',
  
  -- Match html tags
  'AndrewRadev/tagalong.vim',

  'tpope/vim-fugitive',
  { "nathom/filetype.nvim" }, -- Replacement for filetype nvim
  'lewis6991/impatient.nvim', -- performance
})
