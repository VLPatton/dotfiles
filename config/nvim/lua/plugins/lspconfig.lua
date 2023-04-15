local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'clangd',
    'rust_analyzer',
    'jdtls',
    'svelte'
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_maps = lsp.defaults.cmp_mappings({
    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({select = true}),
})

lsp.setup_nvim_cmp({
    mapping = cmp_maps
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, opts)
end)

lsp.setup()
