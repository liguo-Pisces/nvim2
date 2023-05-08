local utils = require "core.utils"

local plugins = {}

for _, plugin in ipairs {
  "plugins.base",
  "plugins.finder",
  "plugins.ui",
  "plugins.lines",
  "plugins.lsp",
  "plugins.cmp",
} do
  plugins = utils.pluginMerge(plugins, require(plugin))
end

-- local base = require("plugins.base")
-- for k, v in ipairs(base) do
--   print(k)
-- end
-- print(vim.inspect(base))

-- plugins = vim.tbl_deep_extend("force", plugins, require "plugins.base")

-- plugins = vim.tbl_deep_extend("force", plugins, require "plugins.finder")
-- plugins = vim.tbl_deep_extend("force", plugins, require "plugins.ui")
-- plugins = vim.tbl_deep_extend("force", plugins, require "plugins.lines")

return plugins

-- return {
--     -- Syntax
--     {
--         "nvim-treesitter/nvim-treesitter",
--         build = function()
--             require("nvim-treesitter.install").update({ with_sync = true })
--         end,
--     },
--     -- File Explorer
--     {
--         "nvim-tree/nvim-tree.lua",
--         version = "*",
--         dependencies = {
--             "nvim-tree/nvim-web-devicons",
--         },
--         config = function()
--             require("nvim-tree").setup {}
--         end,
--     },
-- 
--     -- Statusline
--     {
--         "nvim-lualine/lualine.nvim",
--         dependencies = {
--             "nvim-tree/nvim-web-devicons",
--         },
--         config = function()
--             require("lualine").setup {
--                 options = {
--                     theme = "tokyonight"
--                 }
--             }
--         end
--     },
--     -- 
--     {
--         "akinsho/bufferline.nvim",
--         version = "*",
--         dependencies = {
--             "nvim-tree/nvim-web-devicons",
--         },
--         config = function()
--             require("bufferline").setup{}
--         end
--     },
--     -- Colorscheme
--     {
--         "folke/tokyonight.nvim",
--     },
--     {
--         "lukas-reineke/indent-blankline.nvim",
--     },
--     {
--         "numToStr/Comment.nvim",
--         config = function()
--             require('Comment').setup {}
--         end
--     },
--     {
--         "williamboman/mason.nvim",
--         build = ":MasonUpdate", -- :MasonUpdate updates registry contents
--         config = function()
--             require("mason").setup {}
--         end
--     },
--     {
--         "neovim/nvim-lspconfig",
--         config = require "plugins.configs.lspconfig"
--     },
--     {
--         "L3MON4D3/LuaSnip",
--         dependencies = {
--             "rafamadriz/friendly-snippets",
--         },
--         config = function()
--             require("luasnip.loaders.from_vscode").lazy_load()
--         end
--     },
--     -- {
--     --     "hrsh7th/nvim-cmp",
--     --     dependencies = {
--     --       "saadparwaiz1/cmp_luasnip",
--     --       "hrsh7th/cmp-buffer",
--     --       "hrsh7th/cmp-path",
--     --       "hrsh7th/cmp-nvim-lsp",
--     --     },
--     --     event = "InsertEnter",
--     --     opts = function()
--     --         return require "plugins.configs.cmp"
--     --     end,
--     --     config = function(_, opts)
--     --         require("cmp").setup(opts)
--     --     end
--     -- },
-- }
