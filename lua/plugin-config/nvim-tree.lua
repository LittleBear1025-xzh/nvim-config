-- please see https://github.com/nvim-tree/nvim-tree.lua/wiki/Open-At-Startup
local function open_nvim_tree(data)
  -- always open the tree
  local real_file = vim.fn.filereadable(data.file) == 1
  if real_file then
    require("nvim-tree.api").tree.toggle({
        focus = false,
    })
  end
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

require 'nvim-tree'.setup({
    hijack_netrw = true,
    sync_root_with_cwd = false,
    update_focused_file = {
        enable = true,
        update_root = true,
    },
    tab = {
        sync = {
            open = true,
            close = true
        }
    },
    --[[ view = {
    float = {
      enable = true,

    }
  }, ]]
    diagnostics = {
        enable = true,
        show_on_dirs = true
    }
})
