vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

map('', 'J', '5j', opt)
map('', 'K', '5k', opt)
map('', 'H', '^', opt)
map('', 'L', '$', opt)
map('i', '<C-h', '<BS>', opt)
map('n', '<C-j>', 'J', opt)
map('n', '<C-h>', 'gT', opt)
map('n', '<C-l>', 'gt', opt)
map('n', '<A-h>', '<Cmd>bp<CR>', opt)
map('n', '<A-l>', '<Cmd>bn<CR>', opt)
map('n', '<leader>bd', '<Cmd>bd<CR>', opt)
map('n', 'g<leader>', '2g;', opt)
map('', '<C-s>', '<Cmd>w<CR>', opt)
map('i', '<C-s>', '<Cmd>w<CR>', opt)
map('n', '<leader>q', '<Cmd>q<CR>', opt)
-- 注释在init.lua 中

--lspsaga
map('n', 'gh', '<cmd>Lspsaga hover_doc<CR>', opt)
map('n', 'gd', '<cmd>Lspsaga peek_definition<CR>', opt)
map('n', 'gD', '<cmd>Lspsaga peek_type_definition<CR>', opt)

-- nvim-tree
map('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', opt)

-- telescope映射键位在lua/plugin-config/telescope中

--浮动rename
map('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', opt)

-- 浮动终端
map('n', '<leader>t', '<Cmd>ToggleTerm direction=float<CR>', opt)

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('n', '<esc>', [[i<C-c><CR>exit<CR>]], opts)
  vim.keymap.set('t', '<A-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<A-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<A-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<A-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

--[[ local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true }) ]]
