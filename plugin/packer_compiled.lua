-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/s0228/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/s0228/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/s0228/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/s0228/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/s0228/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://hub.nuaa.cf/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://hub.nuaa.cf/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\na\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://hub.nuaa.cf/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://hub.nuaa.cf/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://hub.nuaa.cf/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://hub.nuaa.cf/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://hub.nuaa.cf/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://hub.nuaa.cf/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://hub.nuaa.cf/hrsh7th/cmp-vsnip"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://hub.nuaa.cf/saadparwaiz1/cmp_luasnip"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://hub.nuaa.cf/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\31show_current_context_start\2\25show_current_context\2\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://hub.nuaa.cf/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://hub.nuaa.cf/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://hub.nuaa.cf/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://hub.nuaa.cf/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://hub.nuaa.cf/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://hub.nuaa.cf/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n_\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\fmap_c_h\2\rcheck_ts\2\fmap_c_w\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://hub.nuaa.cf/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://hub.nuaa.cf/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/opt/nvim-code-action-menu",
    url = "https://hub.nuaa.cf/weilbith/nvim-code-action-menu"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://hub.nuaa.cf/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://hub.nuaa.cf/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://hub.nuaa.cf/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://hub.nuaa.cf/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://hub.nuaa.cf/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://hub.nuaa.cf/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://hub.nuaa.cf/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://hub.nuaa.cf/nvim-lua/plenary.nvim"
  },
  ["renamer.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/renamer.nvim",
    url = "https://hub.nuaa.cf/filipdutescu/renamer.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://hub.nuaa.cf/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://hub.nuaa.cf/akinsho/toggleterm.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/s0228/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://hub.nuaa.cf/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\31show_current_context_start\2\25show_current_context\2\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\na\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n_\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\fmap_c_h\2\rcheck_ts\2\fmap_c_w\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'CodeActionMenu', function(cmdargs)
          require('packer.load')({'nvim-code-action-menu'}, { cmd = 'CodeActionMenu', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-code-action-menu'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CodeActionMenu ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
