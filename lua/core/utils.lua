local M = {}

function M.dump(x)
  print(vim.inspect(x))
end

function M.tblMerge(t1, t2)
  for _, v in ipairs(t2) do
    table.insert(t1, v)
  end

  return t1
end

function M.pluginMerge(p1, p2)
  return M.tblMerge(p1, p2)
end

function M.echo(str)
    vim.cmd "redraw"
    vim.api.nvim_echo({ { str, "Bold" } }, true, {})
end

function M.setMappings(mapTable, base)
  -- iterate over the first keys for each mode
  base = base or {}
  for mode, maps in pairs(mapTable) do
    -- iterate over each keybinding set in the current mode
    for keymap, options in pairs(maps) do
      -- build the options for the command accordingly
      if options then
        local cmd = options
        local keymapOpts = base
        if type(options) == "table" then
          cmd = options[1]
          keymapOpts = vim.tbl_deep_extend("force", keymapOpts, options)
          keymapOpts[1] = nil
        end
        -- if not cmd or keymapOpts.name then -- if which-key mapping, queue it
        --   if not M.which_key_queue then M.which_key_queue = {} end
        --   if not M.which_key_queue[mode] then M.which_key_queue[mode] = {} end
        --   M.which_key_queue[mode][keymap] = keymap_opts
        -- else -- if not which-key mapping, set it
          vim.keymap.set(mode, keymap, cmd, keymapOpts)
        -- end
      end
    end
  end
  -- if package.loaded["which-key"] then M.which_key_register() end -- if which-key is loaded already, register
end

return M
