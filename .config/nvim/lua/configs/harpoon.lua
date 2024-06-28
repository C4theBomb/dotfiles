local harpoon = require("harpoon")
local set = vim.keymap.set

harpoon:setup()

set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon Add new entry" })
set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon Open quick menu" })
set("n", "<C-j>", function() harpoon:list():select(1) end, { desc = "Harpoon Select entry 1" })
set("n", "<C-k>", function() harpoon:list():select(2) end, { desc = "Harpoon Select entry 2" })
set("n", "<C-l>", function() harpoon:list():select(3) end, { desc = "Harpoon Select entry 3" })
set("n", "<C-;>", function() harpoon:list():select(4) end, { desc = "Harpoon Select entry 4" })
set("n", "<leader><C-j>", function() harpoon:list():replace_at(1) end, { desc = "Harpoon Replace entry 1" })
set("n", "<leader><C-k>", function() harpoon:list():replace_at(2) end, { desc = "Harpoon Replace entry 2" })
set("n", "<leader><C-l>", function() harpoon:list():replace_at(3) end, { desc = "Harpoon Replace entry 3" })
set("n", "<leader><C-;>", function() harpoon:list():replace_at(4) end, { desc = "Harpoon Replace entry 4" })
