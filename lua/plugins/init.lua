return 
{
    -- Syntax
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    },
    -- File Explorer
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    -- Statusline
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("lualine").setup {
                options = {
                    theme = "tokyonight"
                }
            }
        end
    },
    -- 
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("bufferline").setup{}
        end
    },
    -- Colorscheme
    {
        "folke/tokyonight.nvim",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require('Comment').setup {}
        end
    },
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate", -- :MasonUpdate updates registry contents
        config = function()
            require("mason").setup {}
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = require "plugins.configs.lspconfig"
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        opts = function()
            return require "plugins.config.cmp"
        end,
        config = function(_, opts)
            require("cmp").setup(opts)
        end
    },
}
