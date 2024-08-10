require("plugins")
require("plugin-config.init")
-- editor config
vim.g.editorconfig = true
-- spaces instead of tabs
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true

-- make tab characters a differen size to differ them from spaces
vim.opt.tabstop = 8
vim.opt.softtabstop = 0

vim.o.wrap = false
vim.opt.number = true
vim.opt.scrolloff = 5

-- keybindings for navigating buffer 
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {})

-- keybindings for using telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
-- vim.keymap.set('n', 'fb', builtin.buffers, {})
-- vim.keymap.set('n', 'fh', builtin.help_tags, {})

-- keybindings neotree

vim.keymap.set('n', '<F6>', ":Neotree toggle<CR>", {})
