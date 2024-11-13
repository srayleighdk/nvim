return {
  'ziontee113/icon-picker.nvim',
  opts = {},
  config = function()
    require('icon-picker').setup { disable_legacy_commands = true }

    local opts = { noremap = true, silent = true }

    vim.keymap.set('n', '<Leader>iy', '<cmd>IconPickerYank<cr>', opts) --> Yank the selected icon into register
    vim.keymap.set('n', '<Leader>ie', '<cmd>IconPickerNormal<cr>', opts) --> Yank the selected icon into register
  end,
}
