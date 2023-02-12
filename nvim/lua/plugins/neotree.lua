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
            { "<leader>e", "<cmd>Neotree toggle left<cr>", desc = "Neotree" },
            { "<leader>E", "<cmd>Neotree toggle float filesystem<cr>", desc = "Neotree" },
        },
    },
}
