local opt = vim.opt

-- opt.autochdir = true -- 随文件自动更换目录

-- 设置行号与相对行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true -- 设置 tab 为空格
-- 自动缩进
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true

-- 行满自动换行
opt.wrap = false

-- 命令行的高度
opt.cmdheight = 1

-- 当前行高亮
opt.cursorline = true

-- 使用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 搜索区分大小写
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- 在所有模式下都可以展示虚拟文本
opt.virtualedit = 'block'

-- 刚打开文件时，可继续上次撤销
opt.undofile = true

-- vim.cmd('colorscheme tokyonight')
