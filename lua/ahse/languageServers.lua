local lsp_zero = require('lsp-zero');
local mason = require('mason');
local mason_lspc = require('mason-lspconfig');
local cmp = require('cmp');

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr}) 
end)

vim.diagnostic.config({
  update_in_insert = true
})

mason.setup()
mason_lspc.setup({
    ensure_installed = {},
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup()
        end,

        rust_analyzer = function()
            require('lspconfig').rust_analyzer.setup({})
        end,

        gopls = function()
            require('lspconfig').gopls.setup({})
        end,

        lua_ls = function()
            require('lspconfig').lua_ls.setup({ })
        end,

        zls = function()
            require('lspconfig').zls.setup({ })
        end,

        tsserver = function()
            require('lspconfig').tsserver.setup({ });
        end,
    }
})

cmp.setup({
    sources = { { name = "nvim_lsp" } },
    mapping = {
        ['<Up>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
        ['<Down>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
        ['<Tab>'] = cmp.mapping.confirm({ select = true })
    },
})

