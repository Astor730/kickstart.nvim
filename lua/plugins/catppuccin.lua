return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      dim_inactive = {
        enabled = true,
        shade = 'dark',
        percentage = 0.2,
      },
      default_integrations = true,
      integrations = {
        gitsigns = true,
        neotree = true,
        treesitter = true,
        barbar = true,
        telescope = true,
        mason = true,
        mini = {
          enabled = true,
        },
        which_key = true,
      },
      color_overrides = {
        mocha = {
          crust = '#000000',
          mantle = '#000000',
          base = '#000000',
          surface0 = '#000000',
          surface1 = '#000000',
          surface2 = '#000000',
          overlay0 = '#316ad0',
          overlay1 = '#ffffff',
          overlay2 = '#ff6cf6',
          text = '#e01b24',
          lavendar = '#b4befe',
          blue = '#ffa16c',
          sapphire = '#74c7ec',
          sky = '#89dceb',
          teal = '#ff92b5',
          green = '#fbbcce',
          yellow = '#ababab',
          peach = '#fab387',
          maroon = '#eba0ac',
          red = '#f38ba8',
          mauve = '#cba6f7',
          pink = '#f5c2e7',
          flamingo = '#f2cdcd',
          rosewater = '#f5e0dc',
        },
      },
      highlight_overrides = {
        mocha = function()
          return {
            LineNr = { fg = '#ffffff' },
          }
        end,
      },
    }

    vim.cmd.colorscheme 'catppuccin'
  end,
}
