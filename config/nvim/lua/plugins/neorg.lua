
require('neorg').setup({
    load = {
        ["core.defaults"] = {},
        ["core.export"] = {},
        ["core.concealer"] = {
            config = {
                folds = false
            }
        },
        ["core.keybinds"] = {
            config = {
                neorg_leader = "<leader>"
            }
        }
    }
})


