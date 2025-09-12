-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")

local highlight_groups = {
  "Normal",
  "NonText",
  "NormalNC",
  "VertSplit",
  "MsgArea",

  "StatusLine",
  "StatusLineNC",
  "FloatBorder",
  "FloatTitle",
  "EndOfBuffer",
  "SignColumn",

  "LineNr",
  "CursorLineNr",
  "FoldColumn",
  "TabLine",
  "TabLineFill",
  "TabLineSel",
  "WinBar",
  "WinBarNC",
  "PmenuSbar",
  "PmenuThumb",
  "TelescopeNormal",
  "TelescopeBorder",
  "TelescopePromptNormal",
  "TelescopeResultsNormal",
  "TelescopePreviewNormal",

  -- "Pmenu",
  -- "PmenuSel",
  -- "NormalFloat",
}

for _, group in ipairs(highlight_groups) do
  vim.cmd("highlight " .. group .. " ctermbg=none guibg=none")
end
