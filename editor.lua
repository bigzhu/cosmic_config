-- Override Cosmic editor options

local g = vim.g
local map = require('cosmic.utils').map
local opt = vim.opt

-- Default leader is <space>
g.mapleader = ','

-- Default indent = 2
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

-- Add additional keymaps or disable existing ones
-- To view maps set, use `:Telescope keymaps`
-- or `:map`, `:map <leader>`

-- Example: Additional insert mapping:
map('i', 'jj', '<esc>', { noremap = true, silent = true })
map('n', '<space>e', ':NvimTreeToggle<CR>')
map('n', 'rn', '<cmd>lua require("cosmic-ui").rename()<cr>')
-- Mapping options:
-- map('n', ...)
-- map('v', ...)
-- map('i', ...)
-- map('t', ...)

-- Example: Disable find files keymap
-- local cmd = vim.cmd
-- cmd('unmap <leader>f')
local home = os.getenv("HOME")
vim.cmd('source ' .. home .. '/.config/nvim/lua/cosmic/config/markdown.vim')

--fold
opt.foldmethod = "indent"
--disable auto fold
opt.foldlevel = 20

--" 输入tab 转为2个空格
opt.expandtab = true
-- 设置制表符空格数
opt.softtabstop = 2
-- 设置缩进空格数
opt.shiftwidth = 2

--无限回滚
opt.undodir = "~/.vimundodir"
bo.undofile = true

