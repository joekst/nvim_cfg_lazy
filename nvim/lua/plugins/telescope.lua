return {
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        dependencies = { "nvim-lua/plenary.nvim"},
        version = false,
        keys = {
            {
                "<leader>fp",
                function()
                    require("telescope.builtin").find_files({
                        cwd = require("lazy.core.config").options.root,
                    })
                end,
                desc = "Find Plugin File",
            },
            {
                "<leader>ff",
                function()
                    require("telescope.builtin").find_files({
                        require("telescope.themes").get_dropdown{previewer = false}
                    })
                end,
                desc = "Find File",
            },
            {
                "<leader>pb",
                function()
                    require("telescope.builtin").buffers()
                end,
                desc = "Find open buffers",
            },
        },
        opts = {
            defaults = {
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
                sorting_strategy = "ascending",
                winblend = 0,
            },
        },
    },
}
