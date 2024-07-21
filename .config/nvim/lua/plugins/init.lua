return {
    { "sitiom/nvim-numbertoggle", lazy = false, },
    { "zbirenbaum/copilot.lua",   event = "InsertEnter",                             opts = require("configs.overrides").copilot },
    { "junegunn/gv.vim",          cmd = { "GV" } },
    { "mbbill/undotree",          cmd = { "UndotreeToggle" } },
    { "nvim-tree/nvim-tree.lua",  cmd = { "NvimTreeToggle", "NvimTreeFocus" },       opts = require("configs.nvimtree") },
    { "folke/trouble.nvim",       cmd = { "Trouble" },                               opts = {}, },
    { "folke/zen-mode.nvim",      keys = { "<leader>zz" },                           config = function() require( "configs.zenmode") end },
    { "stevearc/conform.nvim",    config = function() require("configs.conform") end },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                "zbirenbaum/copilot-cmp",
                config = function()
                    require("copilot_cmp").setup()
                end,
            },
        },
        opts = {
            sources = {
                { name = "nvim_lsp", group_index = 2 },
                { name = "copilot",  group_index = 2 },
                { name = "luasnip",  group_index = 2 },
                { name = "buffer",   group_index = 2 },
                { name = "nvim_lua", group_index = 2 },
                { name = "path",     group_index = 2 },
            },
        },
    },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreview", "MarkdownPreviewToggle", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },
    {
        'tpope/vim-fugitive',
        keys = {
            { "<leader>gs", "<cmd>Git<CR>",         desc = "Git Toggle window" },
            { "gu",         "<cmd>diffget //2<CR>", desc = "Git Diff right side" },
            { "gh",         "<cmd>diffget //3<CR>", desc = "Git Diff left side" },
        },
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = { "<leader>a", "<C-e>", "<C-j>", "<C-k>", "<C-l>", "<C-;>", "<leader><C-j>", "<leader><C-k>", "<leader><C-l>", "<leader><C-;>" },
        config = function()
            require("configs.harpoon")
        end,
    },
    {
        "kevinhwang91/nvim-ufo",
        dependencies = { "kevinhwang91/promise-async" },
        lazy = false,
        config = function()
            require("configs.ufo")
        end
    },
}
