local M = {}

function M.setup(colors)
    local highlights = {
        -- ============================================================
        -- Editor
        -- ============================================================

        Normal = {
            fg = colors.fg,
            bg = colors.bg,
        },

        NormalFloat = {
            fg = colors.fg,
            bg = colors.bg,
        },

        NormalNC = {
            fg = colors.fg,
            bg = colors.bg,
        },

        Cursor = {
            fg = colors.bg,
            bg = colors.fg,
        },

        CursorLine = {
            bg = colors.selection,
        },

        CursorColumn = {
            bg = colors.selection,
        },

        ColorColumn = {
            bg = colors.selection,
        },

        -- ============================================================
        -- Line numbers
        -- ============================================================

        LineNr = {
            fg = colors.subtle,
        },

        CursorLineNr = {
            fg = colors.blue,
            bold = true,
        },

        SignColumn = {
            fg = colors.muted,
            bg = colors.bg,
        },

        FoldColumn = {
            fg = colors.muted,
            bg = colors.bg,
        },

        Folded = {
            fg = colors.muted,
            bg = colors.selection,
        },

        -- ============================================================
        -- Selection / Search
        -- ============================================================

        Visual = {
            bg = colors.selection,
        },

        VisualNOS = {
            bg = colors.selection,
        },

        Search = {
            fg = colors.bg,
            bg = colors.yellow,
        },

        IncSearch = {
            fg = colors.bg,
            bg = colors.blue,
        },

        CurSearch = {
            fg = colors.bg,
            bg = colors.cyan,
        },

        Substitute = {
            fg = colors.bg,
            bg = colors.green,
        },

        -- ============================================================
        -- Popup menu
        -- ============================================================

        Pmenu = {
            fg = colors.fg,
            bg = colors.selection,
        },

        PmenuSel = {
            fg = colors.fg,
            bg = colors.blue,
            bold = true,
        },

        PmenuSbar = {
            bg = colors.border,
        },

        PmenuThumb = {
            bg = colors.muted,
        },

        -- ============================================================
        -- Windows / Borders
        -- ============================================================

        WinSeparator = {
            fg = colors.border,
        },

        VertSplit = {
            fg = colors.border,
        },

        FloatBorder = {
            fg = colors.border,
            bg = colors.bg,
        },

        WinBar = {
            fg = colors.fg,
            bg = colors.bg,
        },

        WinBarNC = {
            fg = colors.muted,
            bg = colors.bg,
        },

        -- ============================================================
        -- Status line
        -- ============================================================

        StatusLine = {
            fg = colors.fg,
            bg = colors.selection,
        },

        StatusLineNC = {
            fg = colors.muted,
            bg = colors.bg,
        },

        -- ============================================================
        -- Tabs
        -- ============================================================

        TabLine = {
            fg = colors.muted,
            bg = colors.bg,
        },

        TabLineFill = {
            bg = colors.bg,
        },

        TabLineSel = {
            fg = colors.fg,
            bg = colors.selection,
            bold = true,
        },

        -- ============================================================
        -- Messages
        -- ============================================================

        ErrorMsg = {
            fg = colors.error,
            bold = true,
        },

        WarningMsg = {
            fg = colors.warning,
        },

        MoreMsg = {
            fg = colors.green,
        },

        Question = {
            fg = colors.cyan,
        },

        ModeMsg = {
            fg = colors.blue,
            bold = true,
        },

        -- ============================================================
        -- Vim syntax
        -- ============================================================

        Comment = {
            fg = colors.muted,
            italic = true,
        },

        Constant = {
            fg = colors.cyan,
        },

        String = {
            fg = colors.green,
        },

        Character = {
            fg = colors.green,
        },

        Number = {
            fg = colors.yellow,
        },

        Boolean = {
            fg = colors.yellow,
            bold = true,
        },

        Float = {
            fg = colors.yellow,
        },

        Identifier = {
            fg = colors.fg,
        },

        Function = {
            fg = colors.blue,
        },

        Statement = {
            fg = colors.purple,
        },

        Conditional = {
            fg = colors.purple,
        },

        Repeat = {
            fg = colors.purple,
        },

        Label = {
            fg = colors.purple,
        },

        Operator = {
            fg = colors.cyan,
        },

        Keyword = {
            fg = colors.purple,
        },

        Exception = {
            fg = colors.red,
        },

        PreProc = {
            fg = colors.purple,
        },

        Include = {
            fg = colors.purple,
        },

        Define = {
            fg = colors.purple,
        },

        Macro = {
            fg = colors.purple,
        },

        PreCondit = {
            fg = colors.purple,
        },

        Type = {
            fg = colors.yellow,
        },

        StorageClass = {
            fg = colors.purple,
        },

        Structure = {
            fg = colors.yellow,
        },

        Typedef = {
            fg = colors.yellow,
        },

        Special = {
            fg = colors.cyan,
        },

        SpecialChar = {
            fg = colors.cyan,
        },

        Tag = {
            fg = colors.blue,
        },

        Delimiter = {
            fg = colors.fg,
        },

        Debug = {
            fg = colors.red,
        },

        Underlined = {
            underline = true,
        },

        Ignore = {
            fg = colors.subtle,
        },

        Error = {
            fg = colors.error,
        },

        Todo = {
            fg = colors.yellow,
            bold = true,
        },

        -- ============================================================
        -- Diff
        -- ============================================================

        DiffAdd = {
            fg = colors.added,
            bg = colors.bg,
        },

        DiffChange = {
            fg = colors.changed,
            bg = colors.bg,
        },

        DiffDelete = {
            fg = colors.removed,
            bg = colors.bg,
        },

        DiffText = {
            fg = colors.changed,
            bg = colors.selection,
        },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
