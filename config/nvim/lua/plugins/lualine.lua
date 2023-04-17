

local lualine = require('lualine')

local lloptions = {
    options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
    tabline = {
        lualine_a = {'buffers'},
        lualine_z = {'tabs'}
    }

}

lualine.setup(lloptions)
