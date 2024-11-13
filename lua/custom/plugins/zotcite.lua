return {
  'jalvesaq/zotcite',
  lazy = true,
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('zotcite').setup {
      -- your options here (see doc/zotcite.txt)
    }
  end,
}
