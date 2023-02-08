-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]])

return require('packer').startup({ function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- 加速启动
  use 'lewis6991/impatient.nvim'
  --测试启动速度
  use 'dstein64/vim-startuptime'

  -- LSP
  use {
    'williamboman/mason.nvim',
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
    'ray-x/lsp_signature.nvim'
  }
  --[[ use { 'williamboman/mason.nvim',
    event = 'InsertEnter',
  }
  use { 'neovim/nvim-lspconfig', after = 'mason.nvim',
  }
  use { 'williamboman/mason-lspconfig.nvim', after = 'nvim-lspconfig' }
  use { 'ray-x/lsp_signature.nvim', after = 'mason.nvim',
    config = function()
      require('lsp/init')
    end
  } ]]

  -- 补全
  use {

    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',
  }
  --[[ use {
    'hrsh7th/nvim-cmp',
    after = 'LuaSnip',
    config = function()
      require('plugin-config/nvim-cmp')
    end
  }
  use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' }
  use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }
  use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }
  use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' } ]]
  -- For luasnip users
  use({
    "L3MON4D3/LuaSnip",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp",
    -- event = { 'InsertEnter', 'CmdlineEnter' },
  })
  -- use { 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' }
  -- For vsnip users
  -- use 'hrsh7th/cmp-vsnip'
  -- use 'hrsh7th/vim-vsnip'
  -- snippet
  use 'rafamadriz/friendly-snippets'
  -- 括号补全
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {
        disable_filetype = {},
        map_c_h = true,
        map_c_w = true,
      }
    end
  }

  -- 语法高亮
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      { 'windwp/nvim-ts-autotag' },
      { 'mrjones2014/nvim-ts-rainbow' }
    },
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- use 'NvChad/nvim-colorizer.lua'

  -- 高亮光标下的单词
  use 'RRethy/vim-illuminate'

  -- 浮动命令行
  use {
    -- "akinsho/toggleterm.nvim", tag = '*',
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup()
    end
  }

  -- 浮动code action
  use { 'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  }

  -- 浮动rename
  use {
    'filipdutescu/renamer.nvim',
    -- branch = 'master',
    requires = { { 'nvim-lua/plenary.nvim' } },
  }

  -- 文件树
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    --[[ cmd = 'NvimTreeToggle',
    config = function()
      require('plugin-config/nvim-tree')
    end ]]
  }

  -- 文件搜索
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } },
    --[[ keys = '<leader>',
    config = function()
      require('plugin-config/telescope')
    end ]]
  }

  --搜索
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      --require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

  -- 首页
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
  }

  -- Theme
  use 'navarasu/onedark.nvim'
  use { 'sainnhe/everforest',
    config = function()
      vim.cmd('colorscheme everforest')
    end
  }

  -- 缩进线
  use { 'lukas-reineke/indent-blankline.nvim',
    config = function()
      require("indent_blankline").setup {
        -- for example, context is off by default, use this to turn it on
        -- space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
      }
    end
  }

  -- 状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  -- Bufferline
  use {
    'akinsho/bufferline.nvim',
    -- tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons'
  }

  --平滑滚动
  use 'karb94/neoscroll.nvim'

  -- 格式化
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- 注释
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- surround
  use({
    "kylechui/nvim-surround",
    -- tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  -- markdown预览
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, }) --use 'nvim-colorizer'
end,

  config = {
    git = {
      default_url_format = 'https://github.com/%s'
    },
    display = {
      open_fn = function()
        return require('packer.util').float({ border = "single" })
      end
    },
  },
})
