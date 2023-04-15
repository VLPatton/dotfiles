

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>tr", vim.cmd.term)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set('n', '<leader>dl', ':bd!<CR>')

vim.keymap.set('n', '<Tab>', 'gt')
vim.keymap.set('n', '<S-Tab>', 'gT')
vim.keymap.set('n', '<leader>tt', function() 
    vim.cmd(':tabnew')
    vim.cmd.Ex()
end)
vim.keymap.set('n', '<leader>tx', ':tabc<CR>')

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
