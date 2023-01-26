require('basic')
require('keybindings')
require('plugins')
require('lsp/init')
require('plugin-config/nvim-treesitter')
require('plugin-config/nvim-cmp')

-- Theme
require('onedark').load()
require('bufferline').setup{}

require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

require'nvim-tree'.setup({
  open_on_setup = true,
  open_on_setup_file = true,
  tab = {
    sync = {
      open = true,
      close = true
    }
  }
})

require'lualine'.setup{}

require('Comment').setup({
  toggler = {
    -- line = '<leader>/',
    line = '<C-_>',
  },
  opleader = {
    -- block = '<leader>/'
    block = '<C-_>'
  }
})

-- require'indent_blankline'

