return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup {
      strategies = {
        chat = {
          adapter = 'openrouter_deepseek',
        },
        inline = {
          adapter = 'openrouter_gemini',
        },
      },
      adapters = {
        openrouter_deepseek = function()
          return require('codecompanion.adapters').extend('openai_compatible', {
            env = {
              url = 'https://openrouter.ai/api',
              api_key = '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',
              chat_url = '/v1/chat/completions',
            },
            schema = {
              model = {
                default = 'deepseek/deepseek-r1:free',
              },
            },
          })
        end,

        openrouter_gemini = function()
          return require('codecompanion.adapters').extend('openai_compatible', {
            env = {
              url = 'https://openrouter.ai/api',
              api_key = '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',
              chat_url = '/v1/chat/completions',
            },
            schema = {
              model = {
                default = 'google/gemini-2.0-flash-thinking-exp:free',
              },
            },
          })
        end,
      },
    }
  end,
}
