return {
	{"shaunsingh/oxocarbon.nvim", lazy = true},
	{"ellisonleao/gruvbox.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
	{"EdenEast/nightfox.nvim", lazy = true},
}
