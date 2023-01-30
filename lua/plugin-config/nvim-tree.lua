-- please see https://github.com/nvim-tree/nvim-tree.lua/wiki/Open-At-Startup
local function open_nvim_tree()

  -- always open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

require 'nvim-tree'.setup({
  hijack_netrw = true,
  tab = {
    sync = {
      open = true,
      close = true
    }
  },
  view = {
    float = {
      enable = true,

    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true
  }
})
