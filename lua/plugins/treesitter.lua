return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        version = "v0.9.2",
        event = { "BufReadPost", "BufWritePost", "BufNewFile", "VeryLazy" },
        lazy = vim.fn.argc(-1) == 0,

        init = function(plugin)
            require("lazy.core.loader").add_to_rtp(plugin)
            require("nvim-treesitter.query_predicates")
        end,

        cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },

        ---@type TSConfig
        ---@diagnostic disable-next-line: missing-fields
        opts = {
            highlight = { enable = true },
            indent = { enable = true },

            ensure_installed = {
                "lua",
                "javascript", "typescript",
                "go",
                "zig",
                "rust", "toml",
                "css",
                "html",
                "json",
                "markdown",
                "sql",
                "xml",
                "yaml",
                "tsx",
                "python"
            }
        },
    },
    {
        "windwp/nvim-ts-autotag",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        opts = {},
    }
}
