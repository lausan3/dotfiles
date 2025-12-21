-- Control F to toggle NvimTree
vim.keymap.set('n', '<C-F>', ':NvimTreeToggle<CR>')

-- Option up, down to move lines
vim.keymap.set('n', '<M-Up>', 'ddkP')
vim.keymap.set('i', '<M-Up>', '<Esc>ddkPi')
vim.keymap.set('n', '<M-Down>', 'ddp')
vim.keymap.set('i', '<M-Down>', '<Esc>ddpi')

-- Option+d to duplicate line down, Option+Shift+D to duplicate line down
-- vim.keymap.set('n', '<M-d>', 'Yp')
-- vim.keymap.set('i', '<M-d>', '<Esc>Yp')
-- vim.keymap.set('n', '<M-D>', 'YP')
-- vim.keymap.set('i', '<M-D>', '<Esc>YP')
