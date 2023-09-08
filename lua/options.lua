-- local exec = vim.api.nvim_exec -- execute Vimscript
local set = vim.opt               -- global options
local cmd = vim.cmd               -- execute Vim commands
-- local fn    = vim.fn           -- call Vim functions
-- local g = vim.g                -- global variables
-- local b     = vim.bo           -- buffer-scoped options
-- local w     = vim.wo           -- windows-scoped options


cmd("autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=grey") -- to Show whitespace, MUST be inserted BEFORE the colorscheme command

set.termguicolors = true -- Enable GUI colors for the terminal to get truecolor
set.list = false -- show whitespace
set.listchars = {
  nbsp = "⦸", -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
  extends = "»", -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
  precedes = "«", -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
  tab = "▷─", -- WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
  trail = "•", -- BULLET (U+2022, UTF-8: E2 80 A2)
  space = " "
}
set.fillchars = {
  diff = "∙", -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
  eob = " ", -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
  fold = "·", -- MIDDLE DOT (U+00B7, UTF-8: C2 B7)
  vert = " " -- remove ugly vertical lines on window division
}

set.clipboard = "unnamedplus"
set.cursorline = true

-- Intending
set.expandtab = true
set.shiftwidth = 2
set.smartindent = true
set.tabstop = 2
set.softtabstop = 2

set.ignorecase = true
set.smartcase = true
set.mouse = "a"

-- Numbers
set.number = true
set.numberwidth = 2
set.ruler = false

set.swapfile = false

