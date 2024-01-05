return {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
  },

  config = function()
    local lsp_zero = require('lsp-zero')
      lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({buffer = bufnr})

      lsp_zero.set_sign_icons({
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
      })
    end)

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {'lua_ls'},
      handlers = {
        lsp_zero.default_setup,
      },
    })

    local cmp = require('cmp')
    local cmp_action = require('lsp-zero').cmp_action()
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          -- `Enter` key to confirm completion
          ['<CR>'] = cmp.mapping.confirm({select = false}),
      })
    })
  end
}
