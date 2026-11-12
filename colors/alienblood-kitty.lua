-- alienblood-kitty: thetomcraig/alienblood.vim (MIT) for nvim, with directories
-- in the bold bright blue (color12) that kitty's AlienBlood theme gives `ls`
-- directories, and nvim's own highlight groups (treesitter, floating windows,
-- diagnostics, git signs) mapped onto the same palette.

vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "alienblood-kitty"

local c = {
  bg = "#121c13",
  fg = "#768e88",

  -- Greys, named by lightness
  black = "#000000",
  gray3 = "#080808",
  nearblack = "#111d13",
  gray15 = "#262626",
  gray19 = "#303030",
  gray27 = "#444444",
  gray31 = "#4e4e4e",
  gray38 = "#626262",
  gray42 = "#6c6c6c",
  gray62 = "#9e9e9e",

  -- Greens and yellows
  deepgreen = "#14311c",
  darkgreen = "#255031",
  green = "#398d31",
  brightgreen = "#00e000",
  mint = "#81f7a2",
  moss = "#4c5815",
  olive = "#838f2e",
  lime = "#c8e200",
  khaki = "#87875f",

  -- Teals and blues
  teal = "#3d9089",
  darkteal = "#005f5f",
  cyan = "#00e3ce",
  bluegray = "#87afaf",
  sky = "#00b8e5",
  steelblue = "#3b7c91",
  slate = "#596c91",
  blue = "#005bbb",
  periwinkle = "#87afff",
  dirblue = "#00a9df", -- kitty AlienBlood color12

  -- Reds and oranges
  orange = "#e79201",
  rust = "#923c33",
  red = "#ff0000",
  scarlet = "#ff2600",
}

local groups = {
  Normal = { fg = c.fg, bg = c.bg },

  -- Syntax
  Comment = { fg = c.darkgreen },
  SpecialComment = { fg = c.khaki, reverse = true },
  Constant = { fg = c.moss },
  String = { fg = c.cyan },
  Character = { fg = c.brightgreen },
  Number = { fg = c.rust },
  Boolean = { fg = c.lime },
  Float = { fg = c.orange },
  Identifier = { fg = c.bluegray },
  Function = { fg = c.slate },
  Statement = { fg = c.moss },
  Conditional = { fg = c.sky },
  Repeat = { fg = c.mint },
  Label = { fg = c.darkgreen },
  Operator = { fg = c.lime },
  Keyword = { fg = c.teal },
  Exception = { fg = c.orange },
  PreProc = { fg = c.green },
  Include = { fg = c.steelblue },
  Define = { fg = c.olive },
  Macro = { fg = c.olive },
  PreCondit = { fg = c.olive },
  Type = { fg = c.bluegray },
  StorageClass = { fg = c.slate },
  Structure = { fg = c.green },
  Typedef = { fg = c.blue },
  Special = { fg = c.teal },
  Underlined = { fg = c.nearblack, bg = c.steelblue },
  Error = { fg = c.red, bg = c.bg, reverse = true },
  Todo = { fg = c.bg, bg = c.orange, bold = true },

  -- Language-specific syntax
  htmlStatement = { fg = c.darkgreen },
  htmlItalic = { fg = c.olive },
  htmlArg = { fg = c.slate },
  cssIdentifier = { fg = c.olive },
  cssClassName = { fg = c.olive },
  vimAutoCmdSfxList = { link = "Type" },
  vimAutoEventList = { link = "Identifier" },
  vimCmdSep = { link = "Special" },
  vimCommentTitle = { link = "SpecialComment" },
  vimFunction = { link = "Function" },
  vimUserFunc = { link = "Function" },

  -- Editor UI
  Cursor = { fg = c.black, bg = c.fg },
  CursorLine = { bg = c.gray15 },
  CursorColumn = { bg = c.bg },
  ColorColumn = { bg = c.gray15 },
  LineNr = { fg = c.gray31, bg = c.bg },
  CursorLineNr = { fg = c.gray62 },
  SignColumn = { fg = c.khaki, bg = c.gray3 },
  FoldColumn = { fg = c.bluegray, bg = c.bg },
  Folded = { fg = c.gray27, bg = c.bg },
  VertSplit = { fg = c.gray27, bg = c.bg },
  NonText = { fg = c.gray27 },
  SpecialKey = { fg = c.gray19 },
  Directory = { fg = c.dirblue, bold = true },
  Title = { fg = c.olive },
  Visual = { fg = c.mint, bg = c.darkgreen },
  VisualNOS = { underline = true },
  Search = { fg = c.bg, bg = c.olive },
  IncSearch = { fg = c.lime, bg = c.olive, reverse = true },
  MatchParen = { fg = c.bg, bg = c.cyan },
  StatusLine = { fg = c.mint, bg = c.deepgreen },
  StatusLineNC = { fg = c.gray62, bg = c.deepgreen },
  StatusLineTerm = { fg = c.gray62, bg = c.deepgreen },
  StatusLineTermNC = { fg = c.gray62, bg = c.deepgreen },
  TabLine = { fg = c.gray42, bg = c.bg },
  TabLineFill = { fg = c.gray42, bg = c.bg },
  TabLineSel = { fg = c.gray62, bg = c.bg },
  Pmenu = { fg = c.gray38, bg = c.gray15 },
  PmenuSel = { fg = c.bg, bg = c.slate },
  PmenuSbar = { fg = c.gray15, bg = c.gray15 },
  PmenuThumb = { fg = c.gray15, bg = c.gray15 },
  WildMenu = { fg = c.lime, bg = c.olive },

  -- Messages
  ModeMsg = { fg = c.fg },
  MoreMsg = { fg = c.olive },
  Question = { fg = c.slate },
  ErrorMsg = { fg = c.red },
  WarningMsg = { fg = c.red },

  -- Diff
  DiffAdd = { fg = c.green, reverse = true },
  DiffChange = { fg = c.darkteal, reverse = true },
  DiffDelete = { fg = c.red, reverse = true },
  DiffText = { fg = c.fg, reverse = true },
  diffAdded = { link = "DiffAdd" },
  diffChanged = { link = "DiffChange" },
  diffRemoved = { link = "DiffDelete" },
  diffFile = { link = "Directory" },
  diffIndexLine = { link = "Number" },
  diffBDiffer = { link = "WarningMsg" },
  diffCommon = { link = "WarningMsg" },
  diffDiffer = { link = "WarningMsg" },
  diffIdentical = { link = "WarningMsg" },
  diffIsA = { link = "WarningMsg" },
  diffNoEOL = { link = "WarningMsg" },
  diffOnly = { link = "WarningMsg" },

  -- Spelling
  SpellBad = { fg = c.scarlet, undercurl = true },
  SpellCap = { fg = c.periwinkle, undercurl = true },
  SpellLocal = { fg = c.green, undercurl = true },
  SpellRare = { fg = c.orange, undercurl = true },

  -- nvim-only groups. Left unset, nvim's defaults are far brighter than this
  -- palette, so they're mapped onto alienblood's colours.

  -- Treesitter and LSP variables fall back to @variable; punctuation to Delimiter.
  ["@variable"] = { fg = c.fg },
  Delimiter = { link = "Special" },

  NormalFloat = { link = "Normal" },
  FloatBorder = { link = "VertSplit" },
  CurSearch = { link = "Search" },
  QuickFixLine = { link = "Visual" },
  Conceal = { link = "Comment" },
  OkMsg = { link = "MoreMsg" },

  -- Git signs
  Added = { link = "diffAdded" },
  Changed = { link = "diffChanged" },
  Removed = { link = "diffRemoved" },

  DiagnosticError = { link = "ErrorMsg" },
  DiagnosticWarn = { fg = c.orange },
  DiagnosticInfo = { link = "Identifier" },
  DiagnosticHint = { link = "Special" },
  DiagnosticOk = { link = "String" },
  DiagnosticUnderlineError = { undercurl = true, sp = c.red },
  DiagnosticUnderlineWarn = { undercurl = true, sp = c.orange },
  DiagnosticUnderlineInfo = { undercurl = true, sp = c.bluegray },
  DiagnosticUnderlineHint = { undercurl = true, sp = c.teal },
  DiagnosticUnderlineOk = { undercurl = true, sp = c.cyan },
}

for name, spec in pairs(groups) do
  vim.api.nvim_set_hl(0, name, spec)
end
