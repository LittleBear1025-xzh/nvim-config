local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fp', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
-- vim.keymap.set('n', '<C-k>', builtin., {})
-- 模糊搜索当前buffer内容
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {})

require('telescope').setup {
  defaults = {
    -- 需要安装ripgrep
    -- sudo apt install ripgrep
    file_ignore_patterns = { "node_modules", ".git" }
  }
}
