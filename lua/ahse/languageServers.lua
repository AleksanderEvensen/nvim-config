local lsp_zero = require('lsp-zero');
local mason = require('mason');
local mason_lspc = require('mason-lspconfig');

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr}) 
    vim.keymap.set('n', '<cmd>Telescope lsp_references<cr>', { buffer = bufnr })
end)

mason.setup()
mason_lspc.setup({
    ensure_installed = {},
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup()
        end,

        lua_ls = function()
            require('lspconfig').lua_ls.setup({ })
        end
    }
})
