-- Set to true if using a NerdFont
vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = true

-- Enable "mouse mode" to allow some mouse interactions.
vim.o.mouse = 'a'

-- Don't show mode, since I use Lualine and it already shows the mode
vim.o.showmode = false

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

-- Render whitespace characters
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live
vim.o.inccommand = 'split'

-- Minimum number of lines to keep above/below the current line
vim.o.scrolloff = 10
