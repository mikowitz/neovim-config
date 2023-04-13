local set = vim.opt

-- no backups
set.updatecount = 0
set.backup = false
set.writebackup = false
set.undofile = true

-- tabs
set.tabstop = 2
set.softtabstop = 2
set.smarttab = true
set.shiftwidth = 2
set.expandtab = true

set.smartindent = true

-- line numbers
set.number = true
set.relativenumber = true
set.numberwidth = 3
set.cursorline = true
set.cursorcolumn = true

-- command bar
set.showcmd = true
set.cmdheight = 1

-- file encoding
set.fileencoding = "utf-8"
set.encoding = "utf-8"

-- faster RE engine
set.re = 1

-- search
set.incsearch = true
set.hlsearch = true
set.ignorecase = true
set.infercase = true
set.smartcase = true

set.termguicolors = true

set.splitright = true
set.splitbelow = true

-- clipboard
set.clipboard = "unnamedplus"

vim.g.python3_host_prog = vim.fn.expand("$HOME/.asdf/shims/python3")
