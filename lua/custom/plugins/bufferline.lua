return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  lazy = false,
  keys = {
    { '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', desc = '[Buffers] Delete Other' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = '[Buffers] Delete to the Right' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = '[Buffers] Delete to the Left' },
    { '<leader>bd', '<Cmd>Bdelete<CR>', desc = '[Buffers] Delete' },
    { '<leader>bf', '<Cmd>BufferLinePick<CR>', desc = '[Buffers] Pick' },
    { '<C-n>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next Buffer' },
    { '<C-p>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev Buffer' },
  },
  opts = {
    options = {

      diagnostics = 'nvim-lsp',
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'Neo-tree',
          highlight = 'Directory',
          text_align = 'left',
        },
      },

      color_icons = true, -- whether or not to add the filetype icon highlights

      show_buffer_close_icons = false,
    },
  },
  config = function(_, opts)
    require('bufferline').setup(opts)
    -- Fix bufferline when restoring a session
    vim.api.nvim_create_autocmd({ 'BufAdd', 'BufDelete' }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
}
