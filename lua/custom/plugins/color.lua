return {
  'brenoprata10/nvim-highlight-colors',
  config = function()
    require('nvim-highlight-colors').setup {
      ---Render style
      ---@usage 'background'|'foreground'|'virtual'
      render = 'virtual',
      virtual_symbol = '',
      ---Set virtual symbol suffix (defaults to '')
      virtual_symbol_prefix = '',

      ---Set virtual symbol suffix (defaults to ' ')
      ---@usage 'inline'|'eol'|'eow'
      virtual_symbol_suffix = ' ',
      virtual_symbol_position = 'eow',

      ---Highlight hex colors, e.g. '#FFFFFF'
      enable_hex = true,

      ---Highlight short hex colors e.g. '#fff'
      enable_short_hex = true,

      ---Highlight rgb colors, e.g. 'rgb(0 0 0)'
      enable_rgb = true,

      ---Highlight hsl colors, e.g. 'hsl(150deg 30% 40%)'
      enable_hsl = true,
    }
  end,
}
