

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')

	use({
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } } 
	})

    --[[
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
    use({
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require('catppuccin').setup({
                flavour = "mocha"
            })
            vim.cmd("colorscheme catppuccin")
        end
    })
    --]]

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'ThePrimeagen/harpoon'

    use 'ThePrimeagen/vim-be-good'

    use 'VLPatton/frcpal.nvim'
    
    use {
        'nvim-neorg/neorg',
        run = ":Neorg sync-parsers"
    }

    use 'nvim-tree/nvim-web-devicons'
end)
