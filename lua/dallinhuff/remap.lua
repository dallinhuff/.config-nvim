-- set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Press <Esc> to clear highlights from search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostics
vim.keymap.set(
  'n',
  '<leader>q',
  vim.diagnostic.setloclist,
  { desc = 'Open diagnostic [Q]uickfix list' }
)

-- Use double escape to exit terminal mode.
-- Doesn't work in all terminal emulators/tmux
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- For split views, use control+(motion) to move between panes
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
