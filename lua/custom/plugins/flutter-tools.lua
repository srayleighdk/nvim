local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}
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
        flutter_path = '/home/kali/Downloads/build/flutter/bin/flutter',
        lsp = {
          capabilities = capabilities,
        },
      }
    end,
  },
}
