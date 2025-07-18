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
    require('bufferline').setup {
      options = {
        clickable = false,
        autohide = 1,
      },
    }
    local opts = { noremap = true, silent = true }
    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
  end,
}
