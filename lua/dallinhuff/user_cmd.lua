-- Create an alias at `:Mkd` for `:RenderMarkdown`
vim.api.nvim_create_user_command('Mkd', function(opts)
  vim.cmd('RenderMarkdown ' .. opts.args)
end, { nargs = '*' })
