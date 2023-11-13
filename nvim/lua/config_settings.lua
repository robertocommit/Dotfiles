local vim = vim

-- Settings
vim.opt.number=true
vim.opt.mouse="a"
vim.opt.relativenumber=true
vim.opt.showmode=true
vim.opt.showcmd=true
vim.opt.textwidth=120
vim.opt.cmdheight=1
vim.opt.showmatch=true
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true
vim.opt.smartindent=true
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.wrapscan=true
vim.opt.conceallevel=1
vim.opt.scrolloff=3
vim.opt.sidescrolloff=999
vim.opt.scrolloff=999
vim.opt.encoding="utf-8"
vim.opt.fileencoding="utf-8"
vim.o.clipboard = "unnamedplus"
vim.wo.colorcolumn="80"

vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set('n', 'zO', require('ufo').openAllFolds)
vim.keymap.set('n', 'zC', require('ufo').closeAllFolds)

vim.cmd[[colorscheme solarized-osaka]]

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
