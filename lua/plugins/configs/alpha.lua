return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function ()
    require('dashboard').setup {
      -- config
      theme = 'doom',
      config = {
        packages = { enable = true },

        header = {
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                     ]],
          [[       ████ ██████           █████      ██                     ]],
          [[      ███████████             █████                             ]],
          [[      █████████ ███████████████████ ███   ███████████   ]],
          [[     █████████  ███    █████████████ █████ ██████████████   ]],
          [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
          [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
          [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
        },

        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Project files',
            desc_hl = 'String',
            key = 'f',
            keymap = '',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'Telescope find_files'
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Recent files',
            desc_hl = 'String',
            key = 'r',
            keymap = '',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'Telescope oldfiles'
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Search text',
            desc_hl = 'String',
            key = 's',
            keymap = '',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'Telescope live_grep'
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Config',
            desc_hl = 'String',
            key = 'c',
            keymap = '',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'edit ~/.config/nvim/'
          },
        },
      }
    }

  end
}
