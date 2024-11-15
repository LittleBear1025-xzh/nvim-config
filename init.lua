require('basic')
require('keybindings')
-- require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
if vim.g.vscode then
  require('nvim-surround').setup()
else
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)

  require("lazy").setup({
    {
      'sainnhe/everforest',
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd('colorscheme everforest')
        require('plugin-config/everforest')
      end
    },
    --测试启动速度
    { 'dstein64/vim-startuptime',   cmd = 'StartupTime' },

    -- basic
    { 'nvim-tree/nvim-web-devicons' },
    -- code runner
    {
      'michaelb/sniprun',
      build = 'bash ./install.sh',
    },
    -- lsp
    {
      'williamboman/mason.nvim',
      dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason-lspconfig.nvim',
        'ray-x/lsp_signature.nvim'
      },
      config = function()
        require('lsp/init')
      end
    },
    {
      'hrsh7th/nvim-cmp',
      dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'rafamadriz/friendly-snippets',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',
        'SirVer/ultisnips',
        'quangnguyen30192/cmp-nvim-ultisnips',
      },
      config = function()
        require('plugin-config/nvim-cmp')
      end,
      build = "make install_jsregexp",
    },
    -- lsp界面美化
    {
      'nvimdev/lspsaga.nvim',
      config = function()
        require('lspsaga').setup({})
      end,
      dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
      }
    },
    -- 括号补全
    {
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup {
          disable_filetype = {},
          map_c_h = true,
          map_c_w = true,
        }
      end
    },
    -- 彩虹括号
    {
      'HiPhish/rainbow-delimiters.nvim',
      config = function()
        require('plugin-config/rainbow')
      end
    },
    {
      'nvim-treesitter/nvim-treesitter',
      dependencies = {
        'windwp/nvim-ts-autotag',
        'nvim-treesitter/nvim-treesitter-textobjects',
        'nvim-treesitter/nvim-treesitter-context',
        -- %匹配
        'andymass/vim-matchup',
      },
      -- build = ':TSUpdate',
      config = function()
        require('plugin-config/nvim-treesitter')
      end
    },
    { 'RRethy/vim-illuminate' },
    {
      "akinsho/toggleterm.nvim",
      config = true
    },
    {
      'weilbith/nvim-code-action-menu',
      -- cmd = 'CodeActionMenu',
    },
    {
      'filipdutescu/renamer.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
      branch = 'master',
      -- keys = {}
      config = true,
    },
    {
      'kyazdani42/nvim-tree.lua',
      -- cmd = 'NvimTreeToggle',
      config = function()
        require('plugin-config/nvim-tree')
      end,
    },
    {
      'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config       = function()
        require('plugin-config/telescope')
      end,
    },
    {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end,
    },
    {
      'goolord/alpha-nvim',
      config = function()
        require 'alpha'.setup(require 'alpha.themes.startify'.config)
      end,
    },
    {
      'lukas-reineke/indent-blankline.nvim',
      main = { ibl },
      -- opts = {
      --     -- for example, context is off by default, use this to turn it on
      --     -- space_char_blankline = " ",
      --     show_current_context = true,
      --     show_current_context_start = true,
      -- }
      config = function()
        require('plugin-config/indent-blankline')
      end,
    },
    {
      'nvim-lualine/lualine.nvim',
      opts = {
        options = {
          theme = 'everforest'
        }
      },
    },
    -- Bufferline
    { 'akinsho/bufferline.nvim', config = true },
    --平滑滚动
    {
      'karb94/neoscroll.nvim',
      config = function()
        require("plugin-config/neoscroll")
      end
    },
    -- -- 重构
    {
      'ThePrimeagen/refactoring.nvim',
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      config = function()
        require("refactoring").setup()
      end,
    },
    -- 注释
    {
      'numToStr/Comment.nvim',
      opts = {
        toggler = {
          line = '<C-_>',
        },
        opleader = {
          line = '<C-_>'
        }
      },
    },
    -- surround
    {
      "kylechui/nvim-surround",
      config = true,
    },
    -- markdown预览
    {
      "iamcco/markdown-preview.nvim",
      build = function()
        vim.fn["mkdp#util#install"]()
      end,
    },
    -- GUI设置
    {
      'equalsraf/neovim-gui-shim',
    },
  }, {
    default = {
      lazy = true
    },
    git = {
      url_format = 'https://github.com/%s.git'
    }
  })
end
