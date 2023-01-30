require('basic')
require('keybindings')
require('plugins')
require('lsp/init')
require('plugin-config/nvim-treesitter')
require('plugin-config/nvim-cmp')
require('plugin-config/telescope')

-- Theme
require('onedark').load()
require('bufferline').setup{}

require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

require('plugin-config/nvim-tree')

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

require("renamer").setup()

-- require'indent_blankline'

