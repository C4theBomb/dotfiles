require("c4thebomb.remap")
require("c4thebomb.set")

require("c4thebomb.lazy_init")

local augroup = vim.api.nvim_create_augroup
local C4theBombGroup = augroup('C4theBomb', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = C4theBombGroup,
    pattern = '*',
    command = [[%s/\s\+$//e]],
})

autocmd('LspAttach', {
    group = C4theBombGroup,
    callback = function(e)
        local opts = { buffer = e.buf }

        vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, opts)
        vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, opts)
        vim.keymap.set('n', 'gI', require('telescope.builtin').lsp_implementations, opts)
        vim.keymap.set('n', 'gT', require('telescope.builtin').lsp_type_definitions, opts)
        vim.keymap.set('n', 'ws', function ()
            require('telescope.builtin').lsp_document_symbols({ ignore_symbols = 'variable' })
        end, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>vws', vim.lsp.buf.workspace_symbol, opts)
        vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '<leader>vca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<leader>vrn', vim.lsp.buf.rename, opts)
        vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_next, opts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, opts)
    end
})
