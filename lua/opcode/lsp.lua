local M = {}

function M.setup(colors)
    local highlights = {
        DiagnosticError = {
            fg = colors.error,
        },

        DiagnosticWarn = {
            fg = colors.warning,
        },

        DiagnosticInfo = {
            fg = colors.info,
        },

        DiagnosticHint = {
            fg = colors.hint,
        },

        DiagnosticOk = {
            fg = colors.green,
        },

        DiagnosticVirtualTextError = {
            fg = colors.error,
        },

        DiagnosticVirtualTextWarn = {
            fg = colors.warning,
        },

        DiagnosticVirtualTextInfo = {
            fg = colors.info,
        },

        DiagnosticVirtualTextHint = {
            fg = colors.hint,
        },

        DiagnosticUnderlineError = {
            undercurl = true,
            sp = colors.error,
        },

        DiagnosticUnderlineWarn = {
            undercurl = true,
            sp = colors.warning,
        },

        DiagnosticUnderlineInfo = {
            undercurl = true,
            sp = colors.info,
        },

        DiagnosticUnderlineHint = {
            undercurl = true,
            sp = colors.hint,
        },

        LspReferenceText = {
            bg = colors.selection,
        },

        LspReferenceRead = {
            bg = colors.selection,
        },

        LspReferenceWrite = {
            bg = colors.selection,
            bold = true,
        },

        LspSignatureActiveParameter = {
            fg = colors.yellow,
            bold = true,
        },

        LspCodeLens = {
            fg = colors.muted,
            italic = true,
        },

        LspInlayHint = {
            fg = colors.muted,
            bg = colors.selection,
            italic = true,
        },

        ["@lsp.type.comment"] = {
            fg = colors.muted,
            italic = true,
        },

        ["@lsp.type.function"] = {
            fg = colors.blue,
        },

        ["@lsp.type.method"] = {
            fg = colors.blue,
        },

        ["@lsp.type.variable"] = {
            fg = colors.fg,
        },

        ["@lsp.type.parameter"] = {
            fg = colors.fg,
        },

        ["@lsp.type.property"] = {
            fg = colors.cyan,
        },

        ["@lsp.type.field"] = {
            fg = colors.cyan,
        },

        ["@lsp.type.type"] = {
            fg = colors.yellow,
        },

        ["@lsp.type.class"] = {
            fg = colors.yellow,
        },

        ["@lsp.type.interface"] = {
            fg = colors.yellow,
        },

        ["@lsp.type.enum"] = {
            fg = colors.yellow,
        },

        ["@lsp.type.namespace"] = {
            fg = colors.yellow,
        },

        ["@lsp.type.keyword"] = {
            fg = colors.purple,
        },

        ["@lsp.type.string"] = {
            fg = colors.green,
        },

        ["@lsp.type.number"] = {
            fg = colors.yellow,
        },

        ["@lsp.type.operator"] = {
            fg = colors.cyan,
        },

        ["@lsp.type.decorator"] = {
            fg = colors.purple,
        },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
