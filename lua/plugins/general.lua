return {
    -- Theme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme tokyonight]])
        end
    },

    -- Dashboard (landing page)
    {
        "goolord/alpha-nvim",
        config = function()
            require("alpha").setup(require('alpha.themes.dashboard').config)
        end
    },

    -- Auto insert pairs
    {
        "windwp/nvim-autopairs"
    },

    -- File explorer
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

    -- Terminal
    {
        "akinsho/toggleterm.nvim",
        config = true,
    },

    -- Keybind help
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            }
        }
    },

    -- File tabs
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = true
    },
}
