return {
    "stevearc/aerial.nvim",
    config = function()
        require("aerial").setup()
    end,
    keys = {
        { "<F6>", "<cmd>AerialToggle<cr>", desc = "Open an code outline (aerial view)" },
    }

}

