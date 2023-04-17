

local h_marks = require('harpoon.mark')
local h_ui = require('harpoon.ui')

vim.keymap.set('n', '<Tab>', h_ui.nav_next)
vim.keymap.set('n', '<leader>a', h_marks.add_file)
vim.keymap.set('n', '<leader>s', h_ui.toggle_quick_menu)
