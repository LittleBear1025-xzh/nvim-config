-- 主题
vim.cmd([[
    if has('termguicolors')
      set termguicolors
    endif
    set background=dark

    let g:everforest_background = 'medium'
    let g:everforest_better_performance = 1

    let g:everforest_enable_italic = 1
    let g:everforest_diagnostic_text_highlight = 1
    let g:everforest_ui_contrast = 'high'
]])
