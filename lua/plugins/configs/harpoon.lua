return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function ()
    local harpoon = require('harpoon')

    harpoon.setup({
      vim.keymap.set('n', '<s-e>', function () harpoon:list():add() end),
      vim.keymap.set('n', '<s-f>', function () harpoon:list():remove() end),
      vim.keymap.set('n', '<s-w>', function () harpoon.ui:toggle_quick_menu(harpoon:list()) end),

      vim.keymap.set('n', '<s-l>', function () harpoon:list():next() end),
      vim.keymap.set('n', '<s-h>', function () harpoon:list():prev() end),
    })
  end
}
