return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = true,
        cmd = "Neotree",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                neo_tree_remove_legacy_commands = 1,
                close_if_last_window = true,
        })
        end,
        keys = {
            {
                "<leader>e",
                function()
                    require("neo-tree.command").execute({toggle = true, position = "left", dir = vim.loop.cwd() })
                end,
                desc = "Neotree"
            },
            {
                "<leader>E",
                function()
                    require("neo-tree.command").execute({toggle = true, dir = vim.loop.cwd(), position = "float" })
                end,
                desc = "Neotree"
            },
        },
    },
}
