return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require('nvim-treesitter.configs')

		configs.setup({
			ensure_installed = { 
				"c", "cpp",
				"lua", 
				"javascript", "typescript", 
				"go", 
				"zig", 
				"rust", "toml", 
				"css",
				"html",
				"json",
				"markdown",
				"swift",
				"sql",
			},
			sync_install = { enable = true },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
