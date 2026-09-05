local M = {}

function M.setup(colors)
    local highlights = {
        -- ============================================================
        -- Comments
        -- ============================================================

        ["@comment"] = {
            fg = colors.muted,
            italic = true,
        },

        -- ============================================================
        -- Variables
        -- ============================================================

        ["@variable"] = {
            fg = colors.fg,
        },

        ["@variable.builtin"] = {
            fg = colors.cyan,
        },

        ["@variable.parameter"] = {
            fg = colors.fg,
        },

        ["@variable.parameter.builtin"] = {
            fg = colors.cyan,
        },

        -- ============================================================
        -- Constants
        -- ============================================================

        ["@constant"] = {
            fg = colors.cyan,
        },

        ["@constant.builtin"] = {
            fg = colors.cyan,
            bold = true,
        },

        ["@constant.macro"] = {
            fg = colors.purple,
        },

        -- ============================================================
        -- Functions
        -- ============================================================

        ["@function"] = {
            fg = colors.blue,
        },

        ["@function.call"] = {
            fg = colors.blue,
        },

        ["@function.builtin"] = {
            fg = colors.cyan,
        },

        ["@function.method"] = {
            fg = colors.blue,
        },

        ["@function.method.call"] = {
            fg = colors.blue,
        },

        -- ============================================================
        -- Keywords
        -- ============================================================

        ["@keyword"] = {
            fg = colors.purple,
        },

        ["@keyword.function"] = {
            fg = colors.purple,
        },

        ["@keyword.operator"] = {
            fg = colors.cyan,
        },

        ["@keyword.return"] = {
            fg = colors.purple,
        },

        ["@keyword.import"] = {
            fg = colors.purple,
        },

        ["@keyword.conditional"] = {
            fg = colors.purple,
        },

        ["@keyword.repeat"] = {
            fg = colors.purple,
        },

        ["@keyword.exception"] = {
            fg = colors.red,
        },

        -- ============================================================
        -- Strings
        -- ============================================================

        ["@string"] = {
            fg = colors.green,
        },

        ["@string.documentation"] = {
            fg = colors.green,
            italic = true,
        },

        ["@string.regexp"] = {
            fg = colors.cyan,
        },

        ["@string.escape"] = {
            fg = colors.cyan,
        },

        ["@string.special"] = {
            fg = colors.cyan,
        },

        -- ============================================================
        -- Numbers / Boolean
        -- ============================================================

        ["@number"] = {
            fg = colors.yellow,
        },

        ["@boolean"] = {
            fg = colors.yellow,
            bold = true,
        },

        ["@float"] = {
            fg = colors.yellow,
        },

        -- ============================================================
        -- Types
        -- ============================================================

        ["@type"] = {
            fg = colors.yellow,
        },

        ["@type.builtin"] = {
            fg = colors.yellow,
        },

        ["@type.definition"] = {
            fg = colors.yellow,
        },

        ["@type.qualifier"] = {
            fg = colors.purple,
        },

        -- ============================================================
        -- Properties / Fields
        -- ============================================================

        ["@property"] = {
            fg = colors.cyan,
        },

        ["@field"] = {
            fg = colors.cyan,
        },

        ["@attribute"] = {
            fg = colors.yellow,
        },

        -- ============================================================
        -- Operators / Punctuation
        -- ============================================================

        ["@operator"] = {
            fg = colors.cyan,
        },

        ["@punctuation.delimiter"] = {
            fg = colors.fg,
        },

        ["@punctuation.bracket"] = {
            fg = colors.muted,
        },

        ["@punctuation.special"] = {
            fg = colors.cyan,
        },

        -- ============================================================
        -- Tags (HTML / XML / JSX)
        -- ============================================================

        ["@tag"] = {
            fg = colors.blue,
        },

        ["@tag.attribute"] = {
            fg = colors.cyan,
        },

        ["@tag.delimiter"] = {
            fg = colors.muted,
        },

        ["@tag.builtin"] = {
            fg = colors.blue,
        },

        -- ============================================================
        -- Constructors
        -- ============================================================

        ["@constructor"] = {
            fg = colors.yellow,
        },

        -- ============================================================
        -- Labels
        -- ============================================================

        ["@label"] = {
            fg = colors.purple,
        },

        -- ============================================================
        -- Modules / Namespaces
        -- ============================================================

        ["@module"] = {
            fg = colors.yellow,
        },

        ["@namespace"] = {
            fg = colors.yellow,
        },

        -- ============================================================
        -- Special
        -- ============================================================

        ["@symbol"] = {
            fg = colors.cyan,
        },

        ["@text.uri"] = {
            fg = colors.blue,
            underline = true,
        },

        ["@text.todo"] = {
            fg = colors.yellow,
            bold = true,
        },

        ["@text.note"] = {
            fg = colors.cyan,
            bold = true,
        },

        ["@text.warning"] = {
            fg = colors.warning,
            bold = true,
        },

        ["@text.danger"] = {
            fg = colors.error,
            bold = true,
        },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
