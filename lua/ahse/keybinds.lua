local wk = require('which-key');
local telescope = require('telescope.builtin');
---@param mode string|table
---@param key string
---@param exec string|function
---@param options table
local function mapping(mode, key, exec, options)
    local key_data = { key, exec };

    key_data.mode = mode

    -- Merge tables
    if type(options) == "table" then
        for k, v in pairs(options) do
            key_data[k] = v
        end
    end

    return key_data
end

wk.add({
    -- Open Netrw
    mapping("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Netrw" }),

    -- Format Buffer
    mapping("n", "<leader>fb", vim.lsp.buf.format, { desc = "Format the current buffer using the LSP" }),

    -- Telescope Keybinds
    mapping('n', '<leader>pf', telescope.find_files, { desc = "Find files in the cwd using Telescope" }),
    mapping('n', '<leader>pg', telescope.live_grep, { desc = "Find in files using ripgrep and Telescope" }),
    mapping('n', '<C-p>', telescope.git_files, { desc = "Find files tracked by git using Telescope" }),

    -- Undotree keybinds
    mapping('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Open undotree", icon = "󰕌" }),

    -- LazyGit
    mapping('n', '<leader>lg', vim.cmd.LazyGit, { desc = "Open lazygit in the current repo" }),
});
