-- Highlight recently yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- -- Ensure the file ends with a blank line
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*',
--   callback = function()
--     local line = vim.fn.getline '$'
--     if line ~= '' then
--       vim.fn.append(vim.fn.line '$', '')
--     end
--   end,
-- })
