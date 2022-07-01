require('plugins')

-- UI

vim.opt.number = true
vim.cmd('colorscheme tokyonight')
vim.opt.termguicolors = true
vim.opt.colorcolumn = { 80, 100, 120 }
vim.opt.hidden = true
vim.opt.cmdheight = 2
vim.opt.updatetime = 300
vim.opt.signcolumn = 'number'

-- Indentation

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- Search

vim.opt.showmatch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true

-- Keys

vim.api.nvim_set_keymap('n', '<C-j>', ':BufferPrevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':BufferNext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':BufferClose<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-o>', ':Telescope find_files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope live_grep<CR>', { noremap = true })

