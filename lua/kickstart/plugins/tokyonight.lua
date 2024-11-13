return {
  'folke/tokyonight.nvim',
  lazy = false,
  config = function()
    -- load the colorscheme here
    vim.cmd [[colorscheme tokyonight-night]]
  end,
}
