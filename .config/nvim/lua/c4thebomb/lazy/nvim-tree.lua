return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 50,
                side = "right",
                number = true,
            },
            renderer = {
                group_empty = false,
                indent_width = 4,
            },
            filters = {
                dotfiles = false,
                git_ignored = false,
                custom = { ".git", "node_modules", "venv", "__pycache__" },
                exclude = { ".github" }
            },
        })

        vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
    end
}
