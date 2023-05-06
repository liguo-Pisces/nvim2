local utils = require "core.utils"

local maps = { i = {}, n = {}, v = {}, t = {} }

-- nvim-tree/nvim-tree.lua
maps.n["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", desc = "toggle nvimtree" }
maps.n["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", desc = "focus nvimtree" }


utils.setMappings(maps)
