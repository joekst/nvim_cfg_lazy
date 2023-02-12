return {
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        dependencies = { "nvim-lua/plenary.nvim"},
        version = false,
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
            { "<leader>,", "<cmd>Telescope buffers theme=dropdown sort_mru=true<cr>", desc = "Find open buffers" },
            { "<leader>fg", "<cmd>Telescope git_files show_untracked=true<cr>", desc = "Find git files" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Find old files" },
            { "<leader>fc", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Find colorschemes" },
            { "<leader>S", "<cmd>Telescope live_grep grep_open_files=true theme=ivy<cr>", desc = "Search in open files" },
            { "<leader>s", "<cmd>Telescope live_grep theme=ivy<cr>", desc = "Search in all files" },
            { "<leader>*", "<cmd>Telescope grep_string grep_open_files=true theme=ivy<cr>", desc = "Search word under cursor in open files" },
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

