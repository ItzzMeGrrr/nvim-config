-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim' -- the package manager
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2', -- syntax highligting
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'folke/tokyonight.nvim',as = 'tokyonight'} -- colorscheme
    use {'joshdick/onedark.vim',as = 'onedark'} -- colorscheme

    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) -- highligting and stuff
    use ('mbbill/undotree') -- history
    use ('Raimondi/delimitMate') -- auto braces, queotes and paranthesis closing
    use {
        'VonHeikemen/lsp-zero.nvim', -- language server manager
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- for comments
    use('preservim/nerdcommenter') 

    -- for pretier
    use('MunifTanjim/prettier.nvim')
    use('jose-elias-alvarez/null-ls.nvim')

end)
