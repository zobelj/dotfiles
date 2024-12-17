-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true

-- file explorer banner
vim.g.netrw_banner = 0

-- don't wrap lines. scroll right to see more
vim.opt.wrap = false

-- searching within a file
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- show 8 lines above/below current position
vim.opt.scrolloff = 8

-- after x ms of inactivity, write to file
vim.opt.updatetime = 50

-- color col after 80 lines. if your code is longer, you
-- should probably make it into 2 lines
-- vim.opt.colorcolumn = "80"

-- use Space as leader key
vim.g.mapleader = " "

-- change a few characters.
-- make spaces a dot, for eg
vim.opt.list = true
vim.opt.listchars = {
    tab = '→ ',
    space = '·',
    trail = '·',
    extends = '…',
    precedes = '…',
    nbsp = '␣',
}

-- hide the default mode indicator
vim.opt.showmode = false

-- color stuff
vim.opt.termguicolors = true

-- hide the command line unless its being used
vim.opt.cmdheight = 0
