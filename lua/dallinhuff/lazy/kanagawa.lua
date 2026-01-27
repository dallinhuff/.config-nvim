return {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  config = function(_, opts)
    require('kanagawa').setup(opts)
    vim.cmd 'colorscheme kanagawa-wave'
  end,
  opts = {
    overrides = function(colors)
      local theme = colors.theme
      local makeDiagnosticColor = function(color)
        local c = require 'kanagawa.lib.color'
        return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
      end

      return {
        -- add tinted background behind diagnostics
        DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
        DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
        DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
        DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),

        -- darken complete suggestions
        Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
        PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
        PmenuSbar = { bg = theme.ui.bg_m1 },
        PmenuThumb = { bg = theme.ui.bg_p2 },
      }
    end,
  },
}
