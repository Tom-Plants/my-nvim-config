vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.o.wrap = false

vim.cmd('colorscheme monokai_pro')

-- 映射按键：Ctrl + n 打开/关闭 NerdTree
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true })

-- 映射按键：在终端模式下，按下 Esc 相当于 Ctrl + \, 再按下 Ctrl + n，用于退出终端模式
--vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- 映射按键：在终端模式下，按下 F1 相当于 Ctrl + \, 再按下 Ctrl + n，用于退出终端模式
vim.api.nvim_set_keymap('t', '<F1>', '<C-\\><C-n>', { noremap = true })

-- 映射按键：Ctrl + l 在标签页之间切换到下一个标签页
vim.api.nvim_set_keymap('', '<C-l>', ':tabn<CR>', { noremap = true })

-- 映射按键：Ctrl + h 在标签页之间切换到上一个标签页
vim.api.nvim_set_keymap('', '<C-h>', ':tabp<CR>', { noremap = true })

-- 启用相对行号
vim.o.relativenumber = true

-- 启用行号
vim.o.number = true

