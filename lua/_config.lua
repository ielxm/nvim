vim.opt.relativenumber = true -- relative numbers
vim.opt.signcolumn = "yes" -- signs near the line numbers (lsp in usual)
vim.opt.linebreak = true
vim.opt.number = true -- number of line
vim.opt.ignorecase = true -- smarter search
vim.opt.smartcase = true -- also smarter search
vim.opt.splitbelow = true -- split window
vim.opt.splitright = true -- split window

vim.opt.expandtab = true -- spaces instead tab
vim.opt.tabstop = 2 -- 2 spaces is tab
vim.opt.shiftwidth = 2 -- tabstop value
vim.opt.smartindent = true -- for smarter spaces
vim.opt.cursorline = true -- horisontal line
vim.opt.clipboard = 'unnamedplus' -- yank to cliboard :)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

----------------------------
--- SHADA/бэкапирование
-----------------------
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.shadafile = "NONE"

----------------------------------------------
--- Загрузка иных конфигурационных файлов
-----------------------------------------
require('_lazy')
require('autocmds')
require('nvim_keymaps')

--------------------------------------
--- Цвета, тема оформления Neovim
---------------------------------
vim.cmd.colorscheme("tokyonight-storm")
vim.opt.termguicolors = true
