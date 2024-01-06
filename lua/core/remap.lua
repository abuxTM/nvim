-- Set leader to space
vim.g.mapleader = ' '

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Yank it
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+y")

-- Ctrl-c to Esc
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Rename keyword
vim.keymap.set('n', '<leader><F2>', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>')

----> Plugins <----

-- Bufferline
vim.keymap.set('n', '<TAB>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-TAB>', ':BufferLineCyclePrev<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')

-- TODO Telescope
vim.keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<CR>')

-- NvTree
vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>F', '<cmd>NvimTreeFocus<CR>')
