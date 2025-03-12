-- `lazydev` configures Lua LSP for Neovim config, runtime and plugins
-- used for completion, annotations and signatures of Neovim apis
return {
  'folke/lazydev.nvim',
  ft = 'lua',
  opts = {
    library = {
      -- Load luvit types when the `vim.uv` word is found
      { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
    },
  },
}
