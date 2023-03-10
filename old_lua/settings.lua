-- 2 spaces iba pre tieto filetypes
vim.cmd[[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]
-- nastav whitespace symbol na botky
vim.api.nvim_command('set listchars=tab:!·,trail:·')
vim.o.number = true
vim.o.textwidth = 80
vim.o.formatoptions = vim.o.formatoptions .. 'a' 
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



