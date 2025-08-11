-- Claude colorscheme for Neovim
-- Inspired by Claude's interface colors

local M = {}

local colors = {
  orange = "#CC785C",
  bg = "#262624",
  bg_dark = "#1f1e1d",
  
  fg = "#faf9f5",
  fg_dim = "#D0CEC8",
  fg_darker = "#A8A6A3",
  
  red = "#E5918A",
  green = "#BAD08A",
  yellow = "#F0D08A",
  blue = "#8ABAE5",
  purple = "#D08AE5",
  cyan = "#8AE5D0",
  
  border = "#4A4845",
  selection = "#4A4845",
  cursor_line = "#2B2A27",
  menu_bg = "#1f1e1d",
  
  git_add = "#BAD08A",
  git_change = "#F0D08A",
  git_delete = "#E5918A",
  
  error = "#E5918A",
  warning = "#F0D08A",
  info = "#8ABAE5",
  hint = "#8AE5D0",
}

local function set_highlights()
  local highlights = {
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.menu_bg },
    FloatBorder = { fg = colors.border, bg = colors.menu_bg },

    CursorLine = { bg = colors.cursor_line },
    CursorColumn = { bg = colors.cursor_line },
    ColorColumn = { bg = colors.bg_dark },
    Cursor = { fg = colors.bg, bg = colors.orange },

    LineNr = { fg = colors.fg_darker },
    CursorLineNr = { fg = colors.orange, bold = true },

    Visual = { bg = colors.selection },
    VisualNOS = { bg = colors.selection },

    Search = { fg = colors.bg, bg = colors.orange },
    IncSearch = { fg = colors.bg, bg = colors.yellow },
    StatusLine = { fg = colors.fg, bg = colors.bg_dark },
    StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_dark },

    TabLine = { fg = colors.fg_dim, bg = colors.bg_dark },
    TabLineFill = { bg = colors.bg_dark },
    TabLineSel = { fg = colors.orange, bg = colors.bg, bold = true },

    VertSplit = { fg = colors.border },
    WinSeparator = { fg = colors.border },

    Pmenu = { fg = colors.fg, bg = colors.menu_bg },
    PmenuSel = { fg = colors.bg, bg = colors.orange },
    PmenuSbar = { bg = colors.border },
    PmenuThumb = { bg = colors.orange },

    Comment = { fg = colors.fg_darker, italic = true },
    Constant = { fg = colors.purple },
    String = { fg = colors.green },
    Character = { fg = colors.green },
    Number = { fg = colors.purple },
    Boolean = { fg = colors.purple },
    Float = { fg = colors.purple },

    Identifier = { fg = colors.fg },
    Function = { fg = colors.yellow, bold = true },

    Statement = { fg = colors.blue, bold = true },
    Conditional = { fg = colors.blue, bold = true },
    Repeat = { fg = colors.blue, bold = true },
    Label = { fg = colors.blue },
    Operator = { fg = colors.orange },
    Keyword = { fg = colors.blue, bold = true },
    Exception = { fg = colors.red, bold = true },

    PreProc = { fg = colors.cyan },
    Include = { fg = colors.cyan },
    Define = { fg = colors.cyan },
    Macro = { fg = colors.cyan },
    PreCondit = { fg = colors.cyan },

    Type = { fg = colors.yellow },
    StorageClass = { fg = colors.blue },
    Structure = { fg = colors.blue },
    Typedef = { fg = colors.blue },

    Special = { fg = colors.orange },
    SpecialChar = { fg = colors.orange },
    Tag = { fg = colors.red },
    Delimiter = { fg = colors.fg_dim },
    SpecialComment = { fg = colors.cyan, italic = true },
    Debug = { fg = colors.red },

    Error = { fg = colors.error },
    ErrorMsg = { fg = colors.error },
    WarningMsg = { fg = colors.warning },

    DiffAdd = { fg = colors.git_add },
    DiffChange = { fg = colors.git_change },
    DiffDelete = { fg = colors.git_delete },
    DiffText = { fg = colors.git_change, bg = colors.bg_dark },

    DiagnosticError = { fg = colors.error },
    DiagnosticWarn = { fg = colors.warning },
    DiagnosticInfo = { fg = colors.info },
    DiagnosticHint = { fg = colors.hint },

    DiagnosticVirtualTextError = { fg = colors.error, bg = colors.bg_dark },
    DiagnosticVirtualTextWarn = { fg = colors.warning, bg = colors.bg_dark },
    DiagnosticVirtualTextInfo = { fg = colors.info, bg = colors.bg_dark },
    DiagnosticVirtualTextHint = { fg = colors.hint, bg = colors.bg_dark },

    ["@variable"] = { fg = colors.fg },
    ["@variable.builtin"] = { fg = colors.purple },
    ["@function"] = { fg = colors.yellow, bold = true },
    ["@function.builtin"] = { fg = colors.cyan },
    ["@keyword"] = { fg = colors.blue, bold = true },
    ["@keyword.function"] = { fg = colors.blue, bold = true },
    ["@keyword.return"] = { fg = colors.blue, bold = true },
    ["@string"] = { fg = colors.green },
    ["@number"] = { fg = colors.purple },
    ["@boolean"] = { fg = colors.purple },
    ["@comment"] = { fg = colors.fg_darker, italic = true },
    ["@type"] = { fg = colors.yellow },
    ["@constant"] = { fg = colors.purple },
    ["@operator"] = { fg = colors.orange },
    ["@punctuation"] = { fg = colors.fg_dim },
    ["@tag"] = { fg = colors.red },
    ["@attribute"] = { fg = colors.cyan },

    GitSignsAdd = { fg = colors.git_add },
    GitSignsChange = { fg = colors.git_change },
    GitSignsDelete = { fg = colors.git_delete },
  }

  for group, colors_table in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, colors_table)
  end
end

function M.setup()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "claude"

  set_highlights()
end

return M
