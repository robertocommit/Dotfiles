local vim = vim
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Keyboard mapping
map('n', '<c-s>', ':w<CR>', opts)
map('i', '<c-s>', '<Esc>:w<CR>', opts)
map('v', '<c-s>', '<Esc>:w<CR>', opts)
map('n', '<up>', '<C-w>k', opts)
map('n', '<down>', '<C-w>j', opts)
map('n', '<left>', '<C-w>h', opts)
map('n', '<right>', '<C-w>l', opts)
map('i', '<C-y>', '<C-u>', opts)
map('i', '<C-x>', '<C-w>', opts)
map('i', '<C-c>', '<C-o>de', opts)

-- Tabbar
map('n', '<C-o>', ':BufferPrevious<CR>', opts)
map('n', '<C-p>', ':BufferNext<CR>', opts)
map('n', '<C-k>', ':BufferMovePrevious<CR>', opts)
map('n', '<C-l>', ':BufferMoveNext<CR>', opts)
map('n', '<C-q>', ':bd!<CR>', opts)

-- Exit terminal mode
map('t', '<ESC>', '<C-\\><C-n>', opts)

-- FZF
map('n', 'ff', ':Files<CR>', opts)
map('n', 'fg', ':Rg<CR>', opts)

-- Keep cursor centered when searching
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

-- Copilot
map('i', '<C-0>', '<Plug>(copilot-next)', { noremap = false })
map('i', '<C-9>', '<Plug>(copilot-previous)', { noremap = false })
