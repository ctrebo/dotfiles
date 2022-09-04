local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {"python"},
  },
  ensure_installed = {
    "tsx",
    "javascript",
    "fish",
    "cpp",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "python"
  },
  autotag = {
    enable = true,
  },
}

require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
