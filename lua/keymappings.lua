-- keymappings.lua
-- Konfiguracia keymappings v neovime a pluginov.
-----------------------------------------------------------

-- definovanie keymapping
local map = vim.api.nvim_set_keymap
options = { noremap = true, silent=true }

-- mapovanie Leader keymapping
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' nastavenie ako globalnej premennej

-- autoparovanie zatvoriek
map('i', '"', '""<left>', options)
map('i', '`', '``<left>', options)
map('i', '(', '()<left>', options)
map('i', '[', '[]<left>', options)
map('i', '{', '{}<left>', options)
map('i', '{<CR>', '{<CR}<ESC>0', options)
map('i', '{;<CR>', '{<CR};<ESC>0', options)

-- Tabs
map('n', '<TAB>', ':bnext<CR>', options)
map('n', '<S-TAB>', ':bprevious<CR>', options)
-- map('n', '<c-w>', ':bd<CR>', options)

-- Lepsi pohyb okien
map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })

-- mapovanie kk ako ESC
map('i', 'kk', '<Esc>', {noremap = true})

-- rychle ukladanie
map('n', '<leader>s',':w<cr>',options)
-- map('i', '<leader>s','<C-c>:w<cr>',options)

-- zrus vsetky okna a opust neovim
map('n', '<leader>q',':qa<cr>',options)

-- Nvim-Tree skratky
map('n', '<leader>e', ':NvimTreeToggle<cr>', options)
map('n', '<leader>r', ':NvimTreeRefresh<cr>', options)
map('n', '<leader>n', ':NvimTreeFindFile<cr>', options)


-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', options)
map('n', '<leader>fg', ':Telescope live_grep<CR>', options)
map('n', '<leader>fb', ':Telescope buffers<CR>', options)
map('n', '<leader>fh', ':Telescope help_tags<CR>', options)
map('n', '<leader>fd', ':Telescope oldfiles<CR>', options)
map('n', '<leader>fm', ':Telescope media_files<CR>', options)
map('n', '<leader>fc', ':Telescope colorscheme<CR>', options)
map('n', '<leader>fp', "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>", options)

-- ToggleTerm
map('n', '<leader>t', ':ToggleTerm<CR>', options)
map('t', '<esc>', [[<C-\><C-n>]], options)
map('t', 'jk', [[<C-\><C-n>]], options)
map('t', '<C-h>', [[<C-\><C-n><C-W>h]], options)
map('t', '<C-j>', [[<C-\><C-n><C-W>j]], options)
map('t', '<C-k>', [[<C-\><C-n><C-W>k]], options)
map('t', '<C-l>', [[<C-\><C-n><C-W>l]], options)
