return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup({
            toggler = {
                line = '<space><space>',
                block = '<leader><space><space>',
            },
            opleader = {
                line = '<space>c',
                block = '<space>b',
            },
            mappings = {
                basic = true,
                extra = false,
            },
        })
    end,
}
