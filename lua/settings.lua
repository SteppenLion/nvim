-- --- ALIASES ---
local cmd = vim.cmd  -- pre exekuciu VIM prikazov rovnako ako cmd('pwd'

-- 2 spaces iba pre tieto filetypes
cmd[[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]

-- nastav whitespace symbol na botky
vim.api.nvim_command('set listchars=tab:!·,trail:·')

vim.o.number = true
vim.o.relativenumber = false
vim.o.autoindent = true
vim.o.background = "dark"
vim.o.clipboard = "unnamedplus"
vim.o.cmdheight = 2
vim.o.completeopt = "menuone,noselect"
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.fileencoding = "utf-8"
vim.o.hidden = true
vim.o.mouse = "a"
vim.o.numberwidth = 4
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.shiftwidth = 4
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = "yes"
vim.o.smartindent = true
vim.o.spelllang = "en"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.textwidth = 100

-- TABS
vim.o.tabstop = 4
vim.o.termguicolors = true
vim.o.title = true
vim.o.updatetime = 250
vim.o.undofile = true
vim.o.wrap = false
vim.o.formatoptions = vim.o.formatoptions:gsub('o', '')
vim.o.showbreak = '↳'
vim.wo.list = true

-- local fn = vim.fn    -- volanie VIM funkcie, e.g. fn.bufnr()
-- local g = vim.g      -- tabulka pre pristup ku globalnym premenny
-- local opt = vim.opt      -- pre exekuciu globalnych moznosti (buffer)   -> vim.api.nvim_set_option()
-- -- vim.o sa sprava ako :set
-- local w = vim.wo    -- pre exekuciu window-local moznosti -> vim.api.nvim_buf_set_option()
-- -- sa sprava ako :setlocal pre window-local moznosti
-- local bo = vim.bo    -- pre exekuciu buffer-local moznosti -> vim.api.nvim_win_set_option()
-- -- vim.bo sa sprava ako :setlocal pre buffer-local moznosti
-- 
-- opt.swapfile = false        -- nepouizivaj swap files
-- opt.syntax = 'enable'       -- syntax highlighting
-- opt.number = true           -- ukaz cislo riadku
-- opt.showmatch = true        -- highlight sparovane zatvorky
-- opt.mouse = 'a'             -- dovol pouzite mysky
-- opt.completeopt = {"menuone","noselect"}
-- opt.hidden = true
-- opt.ignorecase = true
-- opt.pumheight = 10
-- opt.showcmd = false
-- opt.smartcase = true
-- opt.splitbelow = true
-- opt.splitright = true
-- opt.statusline = [[%f %y %m %= %p%% %l:%c]]
-- opt.termguicolors = true
-- opt.undofile = true
-- opt.updatetime = 300
-- opt.writebackup = false
-- opt.swapfile = false
-- opt.directory = "/tmp"
-- opt.scrolloff = 4
-- opt.sidescrolloff = 2
-- opt.cursorline = true
-- opt.relativenumber = false 
-- opt.signcolumn = "yes"
-- opt.timeoutlen = 300
-- opt.shortmess:append("cA")
-- opt.clipboard:append("unnamedplus")
-- -- opt.spell = true
-- opt.showbreak = '↳'
-- 
-- -----------------------------------------------------------
-- -- Global Variables
-- -----------------------------------------------------------
-- g.python3_host_prog = '/usr/bin/python3'
-- g.showtabline = true
-- 
-- 
-- -----------------------------------------------------------
-- -- Tabs, indent
-- -----------------------------------------------------------
-- opt.expandtab = true      -- pouzivaj spaces namiesto tabs
-- opt.shiftwidth = 4        -- posun 4 spaces pri stlaceni tab
-- opt.tabstop = 4           -- 1 tab == 4 spaces
-- opt.smartindent = true    -- autoindent nove riadky
-- 
-- -----------------------------------------------------------
-- -- Window Variables
-- -----------------------------------------------------------
-- w.list = true
-- -- w.listchars=tab:>-
-- w.number = true
-- w.relativenumber = false
-- w.wrap = false


