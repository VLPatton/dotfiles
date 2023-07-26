

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader><leader>y", [[gg"+yG]])
vim.keymap.set("n", "<leader><leader>d", [[ggdG]])

vim.keymap.set('n', '<leader>dd', ':bd!<CR>')

vim.keymap.set('n', '<C-]>', vim.cmd.bnext)
vim.keymap.set('n', '<C-p>', vim.cmd.bprevious)

vim.keymap.set('n', '<C-h>', function()
    require('harpoon.ui').nav_file(1)
end)
vim.keymap.set('n', '<C-j>', function()
    require('harpoon.ui').nav_file(2)
end)
vim.keymap.set('n', '<C-k>', function()
    require('harpoon.ui').nav_file(3)
end)
vim.keymap.set('n', '<C-l>', function()
    require('harpoon.ui').nav_file(4)
end)
vim.keymap.set('n', '<Tab>', require('harpoon.ui').nav_next)
vim.keymap.set('n', '<leader>a', require('harpoon.mark').add_file)
vim.keymap.set('n', '<leader>s', require('harpoon.ui').toggle_quick_menu)

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>tf', telescope.find_files, {})
vim.keymap.set('n', '<leader>gf', telescope.git_files, {})
vim.keymap.set('n', '<leader>gs', function()
	telescope.grep_string({ search = vim.fn.input("grep > ") })
end)

vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
