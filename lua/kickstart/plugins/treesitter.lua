return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = true,
    dependencies = {
      {
        'nvim-treesitter/nvim-treesitter-textobjects',
      },
    },
    run = ':TSUpdate',
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup {
        auto_install = true,
        ensure_installed = {
          'r',
          'python',
          'markdown',
          'markdown_inline',
          'julia',
          'bash',
          'yaml',
          'lua',
          'vim',
          'query',
          'vimdoc',
          'latex', -- requires tree-sitter-cli (installed automatically via Mason)
          'html',
          'css',
          'dot',
          'javascript',
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
          disable = { 'dart' },
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
          },
        },
        textobjects = {
          select = {
            enable = true,
            disable = { 'dart' },
            lookahead = true, -- Enable lookahead to avoid incorrect selections
            keymaps = {
              ['aa'] = '@argument.outer', -- Select outer argument
              ['ia'] = '@argument.inner', -- Select inner argument
              ['ac'] = '@class.outer', -- Select outer class
              ['ic'] = '@class.inner', -- Select inner class
              ['af'] = '@function.outer', -- Select outer function
              ['if'] = '@function.inner', -- Select inner function
              ['al'] = '@loop.outer', -- Select outer loop
              ['il'] = '@loop.inner', -- Select inner loop
            },
          },
          swap = {
            enable = true,
            swap_next = {
              ['<leader>a'] = '@parameter.inner',
            },
            swap_previous = {
              ['<leader>A'] = '@parameter.inner',
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              [']m'] = '@function.outer',
              [']]'] = '@class.inner',
            },
            goto_next_end = {
              [']M'] = '@function.outer',
              [']['] = '@class.outer',
            },
            goto_previous_start = {
              ['[m'] = '@function.outer',
              ['[['] = '@class.inner',
            },
            goto_previous_end = {
              ['[M'] = '@function.outer',
              ['[]'] = '@class.outer',
            },
          },
        },
      }
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
