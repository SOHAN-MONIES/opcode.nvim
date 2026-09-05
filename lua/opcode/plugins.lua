local M = {}

function M.setup(colors)
    local highlights = {
        -- Telescope
        TelescopeNormal = {
            fg = colors.fg,
            bg = colors.bg,
        },

        TelescopeBorder = {
            fg = colors.border,
            bg = colors.bg,
        },

        TelescopeTitle = {
            fg = colors.blue,
            bold = true,
        },

        TelescopePromptNormal = {
            fg = colors.fg,
            bg = colors.selection,
        },

        TelescopePromptBorder = {
            fg = colors.border,
            bg = colors.selection,
        },

        TelescopePromptTitle = {
            fg = colors.blue,
            bold = true,
        },

        TelescopePreviewTitle = {
            fg = colors.green,
            bold = true,
        },

        TelescopeResultsTitle = {
            fg = colors.purple,
            bold = true,
        },

        TelescopeSelection = {
            bg = colors.selection,
        },

        TelescopeMatching = {
            fg = colors.cyan,
            bold = true,
        },

        -- nvim-cmp
        CmpItemAbbr = {
            fg = colors.fg,
        },

        CmpItemAbbrMatch = {
            fg = colors.blue,
            bold = true,
        },

        CmpItemAbbrMatchFuzzy = {
            fg = colors.blue,
        },

        CmpItemKind = {
            fg = colors.purple,
        },

        CmpItemMenu = {
            fg = colors.muted,
        },

        CmpItemKindFunction = {
            fg = colors.blue,
        },

        CmpItemKindMethod = {
            fg = colors.blue,
        },

        CmpItemKindVariable = {
            fg = colors.fg,
        },

        CmpItemKindKeyword = {
            fg = colors.purple,
        },

        CmpItemKindClass = {
            fg = colors.yellow,
        },

        CmpItemKindInterface = {
            fg = colors.yellow,
        },

        CmpItemKindProperty = {
            fg = colors.cyan,
        },

        CmpItemKindField = {
            fg = colors.cyan,
        },

        CmpItemKindText = {
            fg = colors.green,
        },

        -- GitSigns
        GitSignsAdd = {
            fg = colors.added,
        },

        GitSignsChange = {
            fg = colors.changed,
        },

        GitSignsDelete = {
            fg = colors.removed,
        },

        GitSignsAddLn = {
            bg = colors.selection,
        },

        GitSignsChangeLn = {
            bg = colors.selection,
        },

        GitSignsDeleteLn = {
            bg = colors.selection,
        },

        -- Neo-tree
        NeoTreeNormal = {
            fg = colors.fg,
            bg = colors.bg,
        },

        NeoTreeNormalNC = {
            fg = colors.fg,
            bg = colors.bg,
        },

        NeoTreeDirectoryName = {
            fg = colors.blue,
        },

        NeoTreeDirectoryIcon = {
            fg = colors.blue,
        },

        NeoTreeFileName = {
            fg = colors.fg,
        },

        NeoTreeGitAdded = {
            fg = colors.added,
        },

        NeoTreeGitConflict = {
            fg = colors.error,
        },

        NeoTreeGitModified = {
            fg = colors.changed,
        },

        NeoTreeGitDeleted = {
            fg = colors.removed,
        },

        NeoTreeFloatBorder = {
            fg = colors.border,
        },

        NeoTreeFloatTitle = {
            fg = colors.blue,
            bold = true,
        },

        NeoTreeCursorLine = {
            bg = colors.selection,
        },

        -- WhichKey
        WhichKey = {
            fg = colors.blue,
        },

        WhichKeyGroup = {
            fg = colors.purple,
        },

        WhichKeyDesc = {
            fg = colors.fg,
        },

        WhichKeySeparator = {
            fg = colors.muted,
        },

        WhichKeyValue = {
            fg = colors.muted,
        },

        -- Indent Blankline
        IblIndent = {
            fg = colors.border,
        },

        IblScope = {
            fg = colors.muted,
        },

        -- Lazy.nvim
        LazyNormal = {
            fg = colors.fg,
            bg = colors.bg,
        },

        LazyButton = {
            fg = colors.fg,
            bg = colors.selection,
        },

        LazyButtonActive = {
            fg = colors.bg,
            bg = colors.blue,
            bold = true,
        },

        LazyH1 = {
            fg = colors.bg,
            bg = colors.blue,
            bold = true,
        },

        LazySpecial = {
            fg = colors.purple,
        },

        LazyProgressDone = {
            fg = colors.green,
        },

        LazyProgressTodo = {
            fg = colors.muted,
        },

        -- Mason
        MasonNormal = {
            fg = colors.fg,
            bg = colors.bg,
        },

        MasonHeader = {
            fg = colors.bg,
            bg = colors.blue,
            bold = true,
        },

        MasonHeaderSecondary = {
            fg = colors.bg,
            bg = colors.purple,
            bold = true,
        },

        MasonHighlight = {
            fg = colors.blue,
        },

        MasonHighlightBlock = {
            fg = colors.bg,
            bg = colors.blue,
        },

        MasonHighlightBlockBold = {
            fg = colors.bg,
            bg = colors.blue,
            bold = true,
        },

        MasonMuted = {
            fg = colors.muted,
        },

        MasonMutedBlock = {
            fg = colors.fg,
            bg = colors.selection,
        },

        -- Notify
        NotifyERRORBorder = {
            fg = colors.error,
        },

        NotifyWARNBorder = {
            fg = colors.warning,
        },

        NotifyINFOBorder = {
            fg = colors.info,
        },

        NotifyHINTBorder = {
            fg = colors.hint,
        },

        NotifyERRORTitle = {
            fg = colors.error,
        },

        NotifyWARNTitle = {
            fg = colors.warning,
        },

        NotifyINFOTitle = {
            fg = colors.info,
        },

        NotifyHINTTitle = {
            fg = colors.hint,
        },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
