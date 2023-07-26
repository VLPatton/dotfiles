

local frcpal = require('frcpal')

vim.keymap.set('n', '<leader>Pb', function() frcpal.gradle('build') end) -- pb for Project Build
vim.keymap.set('n', '<leader>Pd', function() frcpal.gradle('deploy') end) -- pd for Project Deploy
vim.keymap.set('n', '<leader>PD', frcpal.get_vendordep) -- pD for Project Dependencies
