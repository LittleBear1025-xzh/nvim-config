require('neoscroll').setup({
  -- Set any options as needed
  easing_function = "sine"
})

-- local t    = {}
-- -- Syntax: t[keys] = {function, {function arguments}}
-- t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '50' } }
-- t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '50' } }
-- t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '50' } }
-- t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '50' } }
-- t['<C-y>'] = { 'scroll', { '-0.10', 'false', '50' } }
-- t['<C-e>'] = { 'scroll', { '0.10', 'false', '50' } }
-- t['zt']    = { 'zt', { '50' } }
-- t['zz']    = { 'zz', { '50' } }
-- t['zb']    = { 'zb', { '50' } }
--
-- require('neoscroll.config').set_mappings(t)

local neoscroll = require('neoscroll')

local keymap = {
  ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 250 }) end;
  ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 250 }) end;
  ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 450 }) end;
  ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 450 }) end;
  ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
  ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;
  ["zt"]    = function() neoscroll.zt({ half_win_duration = 250 }) end;
  ["zz"]    = function() neoscroll.zz({ half_win_duration = 250 }) end;
  ["zb"]    = function() neoscroll.zb({ half_win_duration = 250 }) end;
}
local modes = { 'n', 'v', 'x' }
for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end
