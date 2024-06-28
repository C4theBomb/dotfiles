return {
    {
        "stevearc/conform.nvim",
        config = function()
            require("configs.conform")
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        opts = require("configs.nvimtree")
    },
    {
        "mbbill/undotree",
        cmd = { "UndotreeToggle" },
    },
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = { "Trouble" },
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
    {
        "folke/zen-mode.nvim",
        keys = { "<leader>zz" },
        config = function()
            require("configs.zenmode")
        end
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = { "lua-language-server", "html", "cssls", "pylsp", "java_language_server", "sqlls" }
        },
    }
}
