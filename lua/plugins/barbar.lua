return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  lazy = false,
  config = function()
    -- Move current tab left or right
    -- Close current tab
    -- Open a file in a new tab
    -- Add git status to the file
    -- Pin buffer/file
    -- close all but current buffer
    -- Add sorting to the buffers
    -- add min and max length of buffer size
    -- add padding and see how it feels
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
    map('n', '<A-Shift-,>', '<Cmd>BufferMovePrevious<CR>', opts)
    map('n', 'A-Shift-.', '<Cmd>BufferMoveNext<CR>', opts)
    map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
    map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
    map('n', '<A-C>', '<Cmd>BuggerCloseAllButCurrent<CR>', opts)
    require('barbar').setup {
      -- this is where options are set
      animation = true,
      focus_on_close = 'previous',
      highlight_visible = false,
      highlight_alternate = false,
      highlight_inactive_file_icons = false,
      maximum_length = 10,
      minimum_length = 10,
      icons = {
        gitsigns = {
          added = { enabled = true, icon = '+' },
          changed = { enabled = true, icon = '~' },
          deleted = { enabled = true, icon = '-' },
        },
        separator = {
          left = '▎',
          right = '▎',
        },
      },
      sort = {
        ignore_case = true,
      },
      sort_by_name = true,
      sidebar_filetypes = {
        ['neo-tree'] = {
          event = 'BufWinLeave',
        },
      },
      non_name_title = 'Empty File',
    }
    vim.api.nvim_set_hl(0, 'BufferCurrentAdded', { link = 'BufferCurrent' })
  end,
}
