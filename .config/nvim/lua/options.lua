require "nvchad.options"

local o = vim.o
local opt = vim.opt

opt.nu = true
opt.relativenumber = true

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.isfname:append("@-@")

o.foldcolumn = '0'
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true
