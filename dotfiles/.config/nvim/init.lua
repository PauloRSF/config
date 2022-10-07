require('plugins')

-- UI

vim.opt.number = true
vim.cmd('colorscheme tokyonight')
vim.opt.termguicolors = true
vim.opt.colorcolumn = { 80, 100, 120 }
vim.opt.hidden = true
vim.opt.cmdheight = 2
vim.opt.updatetime = 300

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

vim.api.nvim_create_autocmd('BufWritePre', { pattern = '*.rs', command = 'RustFmt' } )
vim.api.nvim_create_autocmd('BufReadPre,FileReadPre', { pattern = '*.md', command = 'set wrap linebreak' } )

vim.api.nvim_set_keymap('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', 'coc#float#has_scroll() ? "<C-R>=coc#float#scroll(1)<CR>" : "<Right>"', { nowait = true, expr = true })
vim.api.nvim_set_keymap('i', '<C-k>', 'coc#float#has_scroll() ? "<C-R>=coc#float#scroll(0)<CR>" : "<Left>"', { nowait = true, expr = true })

vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true })

