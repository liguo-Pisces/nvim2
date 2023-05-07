local utils = require "core.utils"

local maps = { i = {}, n = {}, v = {}, t = {} }

-- nvim-tree/nvim-tree.lua
-- maps.n["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", desc = "toggle nvimtree" }
-- maps.n["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", desc = "focus nvimtree" }

-- NeoTree
maps.n["<leader>e"] = { "<CMD> Neotree toggle <CR>", desc = "Toggle File Explorer" }
maps.n["<leader>o"] = {
  function()
    if vim.bo.filetype == "neo-tree" then
      vim.cmd.wincmd "p"
    else
      vim.cmd.Neotree "focus"
    end
  end,
  desc = "Toggle File Explorer Focus"
}


utils.setMappings(maps)
