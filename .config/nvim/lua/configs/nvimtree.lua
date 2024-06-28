dofile(vim.g.base46_cache .. "nvimtree")

local options = {
    filters = {
        dotfiles = false,
        git_ignored = false,
        custom = { ".git", "node_modules", "venv", "__pycache__" },
        exclude = { ".github", ".gitignore" },
    },
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    hijack_unnamed_buffer_when_opening = false,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    view = {
        side = "right",
        width = 50,
        number = true,
        adaptive_size = false,
        preserve_window_proportions = true,
    },
    git = {
        enable = true,
        ignore = true,
    },
    sort = {
        sorter = "case_sensitive",
    },
    filesystem_watchers = {
        enable = true,
    },
    actions = {
        open_file = {
            resize_window = true,
        },
    },
    renderer = {
        root_folder_label = false,
        group_empty = true,
        indent_width = 4,
        highlight_git = true,
        highlight_opened_files = "none",
        indent_markers = {
            enable = true,
        },
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },

            glyphs = {
                default = "󰈚",
                symlink = "",
                folder = {
                    default = "",
                    empty = "",
                    empty_open = "",
                    open = "",
                    symlink = "",
                    symlink_open = "",
                    arrow_open = "",
                    arrow_closed = "",
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    },
}

return options