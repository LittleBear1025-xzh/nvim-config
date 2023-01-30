require('telescope').setup {
  defaults = {
    -- 需要安装ripgrep
    -- sudo apt install ripgrep
    file_ignore_patterns = { "node_modules", ".git" }
  }
}
