

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>tr", vim.cmd.term)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set('n', '<leader>dd', ':bd!<CR>')

vim.keymap.set('n', '<C-Right>', vim.cmd.bnext)
vim.keymap.set('n', '<C-Left>', vim.cmd.bprevious)

vim.keymap.set('n', '<C-t>', 'gt')
vim.keymap.set('n', '<C-T>', 'gT')
vim.keymap.set('n', '<C-q>', vim.cmd.tabnew)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
