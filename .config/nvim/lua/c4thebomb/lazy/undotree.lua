return {
    "mbbill/undotree",

    config = function()
        -- Toggle undotree
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
}
