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
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
    require('barbar').setup {
      -- this is where options are set
      animation = true,
      sidebar_filetypes = {
        ['neo-tree'] = {
          event = 'BufWinLeave',
        },
      },
      non_name_title = 'Empty File',
    }
  end,
}
