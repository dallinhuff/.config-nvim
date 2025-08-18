return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
    },
    config = function()
      local dap = require 'dap'
      local ui = require 'dapui'

      require('dapui').setup()

      -- setup adapters and configurations per-language here

      vim.keymap.set('n', '<leader>bb', dap.toggle_breakpoint)

      vim.keymap.set('n', '<leader>?', function()
        require('dapui').eval(nil, { enter = true })
      end)

      vim.keymap.set('n', '<leader>bc', dap.continue)
      vim.keymap.set('n', '<leader>bi', dap.step_into)
      vim.keymap.set('n', '<leader>bo', dap.step_over)
      vim.keymap.set('n', '<leader>bO', dap.step_out)
      vim.keymap.set('n', '<leader>br', dap.restart)

      dap.listeners.before.attach.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        ui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        ui.close()
      end
    end,
  },
}
