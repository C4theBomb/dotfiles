return {
    "folke/zen-mode.nvim",
    config = function()
        -- Toggle zen mode
        vim.keymap.set("n", "<leader>zz", function()
            require("zen-mode").setup {
                window = {
                    width = 150,
                    options = {}
                },
            }
            require("zen-mode").toggle()
            vim.wo.wrap = false
            vim.wo.number = true
            vim.wo.rnu = true
        end)
    end
}
