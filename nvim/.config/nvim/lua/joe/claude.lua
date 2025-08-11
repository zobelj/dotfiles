-- Claude colorscheme for Neovim
-- Inspired by Claude's interface colors

local M = {}

-- Color palette
local colors = {
  -- Core Claude colors
  orange = "#CC785C",      -- Claude's signature orange/copper
  bg = "#262624",          -- Primary background
  bg_dark = "#1f1e1d",     -- Darker accent background
  
  -- Extended palette
  fg = "#faf9f5",          -- Primary foreground text
  fg_dim = "#E8E6E3",      -- Dimmed text
  fg_darker = "#B8B6B3",   -- Even more dimmed text
  
  -- Syntax colors (warm palette inspired by Claude theme)
  red = "#D07A7A",         -- Error, deletion
  green = "#A8C07A",       -- Success, addition, strings
  yellow = "#E6C07B",      -- Warning, functions
  blue = "#7AA8C0",        -- Info, keywords
  purple = "#B87AC0",      -- Special, constants
  cyan = "#7AC0B8",        -- Cyan for special syntax
  
  -- UI colors
  border = "#3C3A37",      -- Border color
  selection = "#3C3A37",   -- Visual selection
  cursor_line = "#2B2A27", -- Current line highlight
  menu_bg = "#1f1e1d",     -- Menu/popup background
  
  -- Git colors
  git_add = "#A8C07A",
  git_change = "#E6C07B",
  git_delete = "#D07A7A",
  
  -- Diagnostic colors
  error = "#D07A7A",
  warning = "#E6C07B",
  info = "#7AA8C0",
  hint = "#7AC0B8",
}

local function set_highlights()
  local highlights = {
    -- Base highlights
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.menu_bg },
    FloatBorder = { fg = colors.border, bg = colors.menu_bg },
    
    -- Cursor and lines
    CursorLine = { bg = colors.cursor_line },
    CursorColumn = { bg = colors.cursor_line },
    ColorColumn = { bg = colors.bg_dark },
    Cursor = { fg = colors.bg, bg = colors.orange },
    
    -- Line numbers
    LineNr = { fg = colors.fg_darker },
    CursorLineNr = { fg = colors.orange, bold = true },
    
    -- Visual selection
    Visual = { bg = colors.selection },
    VisualNOS = { bg = colors.selection },
    
    -- Search
    Search = { fg = colors.bg, bg = colors.orange },
    IncSearch = { fg = colors.bg, bg = colors.yellow },
    
    -- Status line
    StatusLine = { fg = colors.fg, bg = colors.bg_dark },
    StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_dark },
    
    -- Tabs
    TabLine = { fg = colors.fg_dim, bg = colors.bg_dark },
    TabLineFill = { bg = colors.bg_dark },
    TabLineSel = { fg = colors.orange, bg = colors.bg, bold = true },
    
    -- Splits
    VertSplit = { fg = colors.border },
    WinSeparator = { fg = colors.border },
    
    -- Menus
    Pmenu = { fg = colors.fg, bg = colors.menu_bg },
    PmenuSel = { fg = colors.bg, bg = colors.orange },
    PmenuSbar = { bg = colors.border },
    PmenuThumb = { bg = colors.orange },
    
    -- Syntax highlighting
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
    
    -- Errors and warnings
    Error = { fg = colors.error },
    ErrorMsg = { fg = colors.error },
    WarningMsg = { fg = colors.warning },
    
    -- Diff
    DiffAdd = { fg = colors.git_add },
    DiffChange = { fg = colors.git_change },
    DiffDelete = { fg = colors.git_delete },
    DiffText = { fg = colors.git_change, bg = colors.bg_dark },
    
    -- LSP and diagnostics
    DiagnosticError = { fg = colors.error },
    DiagnosticWarn = { fg = colors.warning },
    DiagnosticInfo = { fg = colors.info },
    DiagnosticHint = { fg = colors.hint },
    
    DiagnosticVirtualTextError = { fg = colors.error, bg = colors.bg_dark },
    DiagnosticVirtualTextWarn = { fg = colors.warning, bg = colors.bg_dark },
    DiagnosticVirtualTextInfo = { fg = colors.info, bg = colors.bg_dark },
    DiagnosticVirtualTextHint = { fg = colors.hint, bg = colors.bg_dark },
    
    -- Tree-sitter highlights (if using nvim-treesitter)
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
    
    -- Git signs (if using gitsigns.nvim)
    GitSignsAdd = { fg = colors.git_add },
    GitSignsChange = { fg = colors.git_change },
    GitSignsDelete = { fg = colors.git_delete },
  }
  
  for group, colors_table in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, colors_table)
  end
end

function M.setup()
  -- Clear existing highlights
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.o.termguicolors = true
  vim.g.colors_name = "claude"
  
  set_highlights()
end

return M
