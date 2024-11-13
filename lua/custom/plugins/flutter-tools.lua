return {
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    opts = {},
    config = function()
      require('flutter-tools').setup {
        lsp = {
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
        },
      }
    end,
  },
}
