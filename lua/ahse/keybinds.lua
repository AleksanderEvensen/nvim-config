vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Telescope Keybinds
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', telescope.find_files, {})
vim.keymap.set('n', '<leader>pg', telescope.live_grep,  {})
vim.keymap.set('n', '<C-p>',      telescope.git_files,  {})

-- Undotree keybinds
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, {})

-- LazyGit
vim.keymap.set('n', '<leader>lg', vim.cmd.LazyGit, {})






