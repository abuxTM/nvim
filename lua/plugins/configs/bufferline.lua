return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  version = '*',
  enabled = false,

  opts = {
    options = {
      mode = 'buffers',

      offsets = {
        {
          filetype = 'NvimTree',
          text = 'File Explorer',
          highlight = 'Directory',
          seperator = true,
        }
      },
    },
  },
}
