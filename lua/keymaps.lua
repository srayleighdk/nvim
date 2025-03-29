-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
-- vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<Esc>', function()
  if vim.v.hlsearch == 1 then
    vim.cmd 'nohlsearch'
  else
    return '<Esc>'
  end
end, { noremap = true, expr = true })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.api.nvim_set_keymap('n', '<C-v>', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-x>', ':split<CR>', { noremap = true, silent = true })
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Resize splits with keys
-- Resize splits using Ctrl + arrow keys
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save' })
vim.keymap.set('n', 'Q', '<cmd>wqa<CR>', { desc = 'Save all and quit' })
vim.keymap.set('i', '<C-s>', '<Esc>:wa<CR>i', { noremap = true, silent = true }) -- Save in insert mode
vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', { desc = 'Close Window' })

vim.keymap.set('n', '<leader>to', '<cmd>TabnineChat<CR>', { desc = 'Open Tabninechat' })
vim.keymap.set('n', '<leader>td', '<cmd>TabnineChatClose<CR>', { desc = 'Close TabnineChat' })
vim.keymap.set('n', '<leader>tc', '<cmd>TabnineChatClear<CR>', { desc = 'Clear TabnineChat' })

vim.keymap.set('n', '<leader>fr', '<cmd>FlutterRun<CR>', { desc = '[F]lutter [R]un' })
vim.keymap.set('n', '<leader>fs', '<cmd>FlutterReload<CR>', { desc = '[F]lutter Reload' })
vim.keymap.set('n', '<leader>fd', '<cmd>FlutterRestart<CR>', { desc = '[F]lutter Restart' })
vim.keymap.set('n', '<leader>fq', '<cmd>FlutterQuit<CR>', { desc = '[F]lutter Quit' })
vim.keymap.set('n', '<leader>fc', '<cmd>FlutterLogClear<CR>', { desc = '[F]lutter [C]lear Log' })

vim.keymap.set('n', '<leader>rr', '<cmd>Rest run<CR>', { desc = '[R]est run' })
vim.keymap.set('n', '<leader>rl', '<cmd>Rest logs<CR>', { desc = '[R]est logs' })
vim.keymap.set('n', '<leader>re', '<cmd>Rest env select<CR>', { desc = '[R]est env select' })

-- Jump to the next error (use ]e)
vim.api.nvim_set_keymap('n', ']e', ':lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>', { noremap = true, silent = true })

-- Jump to the previous error (use [e)
vim.api.nvim_set_keymap('n', '[e', ':lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>', { noremap = true, silent = true })

-- Jump to the next warning (use ]w)
vim.api.nvim_set_keymap('n', ']w', ':lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.WARN})<CR>', { noremap = true, silent = true })

-- Jump to the previous warning (use [w)
vim.api.nvim_set_keymap('n', '[w', ':lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.WARN})<CR>', { noremap = true, silent = true })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
-- vim.api.nvim_create_autocmd('TextYankPost', {
--   desc = 'Highlight when yanking (copying) text',
--   group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
--   callback = function()
--     vim.hl.on_yank()
--   end,
-- })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<space>e', function()
  vim.diagnostic.open_float { scope = 'line' }
end, { noremap = true, silent = true })

-- vim: ts=2 sts=2 sw=2 et
