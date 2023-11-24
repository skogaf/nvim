local opt = vim.opt

-- hang hao
opt.relativenumber = true
opt.number = true

-- suo jin
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- fang zhi bao guo
opt.wrap = false

-- guang biao hang
opt.cursorline = true

-- qi yong guang biao
opt.mouse:append("a")

-- xi tong jian tie ban
opt.clipboard:append("unnamedplus")

-- mo ren xin chuang kou you he xia
opt.splitright = true
opt.splitbelow = true

-- sou suo
opt.ignorecase = true
opt.smartcase = true

-- wai guan
opt.termguicolors = true
opt.signcolumn = "yes"
