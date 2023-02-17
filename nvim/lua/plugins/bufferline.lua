return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "kyazdani42/nvim-web-devicons",
    },
    config = function()
        require("bufferline").setup({
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = true -- use a "true" to enable the default, or set your own character
                    },
                },
            },
        })
    end,
}
