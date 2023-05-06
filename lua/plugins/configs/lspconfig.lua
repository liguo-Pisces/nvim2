return function()
    local lspconfig = require "lspconfig"
    -- Lua
    lspconfig.lua_ls.setup {}
    -- Go
    lspconfig.gopls.setup {}
end
