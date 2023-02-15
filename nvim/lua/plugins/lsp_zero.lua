return {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
        -- LSP Support
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        -- Autocompletion
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",

        -- Snippets
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local lsp = require("lsp-zero")
        lsp.preset("recommended")

        lsp.setup_nvim_cmp({
            preselect = 'none',
            completion = {
                completeopt = 'menu,menuone,noinsert,noselect',
            },
            formatting = {
                fields = { 'menu', 'abbr', 'kind' },

                format = function(entry, item)
                    local menu_icon = {
                        nvim_lsp = 'λ',
                        luasnip = '⋗',
                        buffer = 'Ω',
                        path = '🖫',
                        nvim_lua = '',
                    }
                    item.menu = menu_icon[entry.source.name]
                    return item
                end,
            },
        })

        lsp.nvim_workspace() -- sets up support for lua
        lsp.setup()
    end,
}
