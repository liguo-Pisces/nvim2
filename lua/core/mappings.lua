local utils = require "core.utils"

local maps = { i = {}, n = {}, v = {}, t = {} }

-- Buffer

-- NvimTree
maps.n["<leader>e"] = { "<cmd> NvimTreeToggle <cr>", desc = "Toggle File Explorer" }
maps.n["<leader>o"] = { "<cmd> NvimTreeFocus <cr>", desc = "Focus File Explorer" }

-- NeoTree
-- maps.n["<leader>e"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle File Explorer" }
-- maps.n["<leader>o"] = {
--   function()
--     if vim.bo.filetype == "neo-tree" then
--       vim.cmd.wincmd "p"
--     else
--       vim.cmd.Neotree "focus"
--     end
--   end,
--   desc = "Toggle File Explorer Focus"
-- }

utils.setMappings(maps)
