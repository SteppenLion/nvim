PREFIX_LIST = {} -- For key menu plugin.

vim.g.mapleader = " "
table.insert(PREFIX_LIST, { "n", "<Space>" })

-- telescope
vim.keymap.set("n", "<Leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<Leader>fb", "<cmd>Telescope buffers<cr>")

--- quicklist
vim.keymap.set("n", "<leader>qn", "<cmd>:cnext<cr>")
vim.keymap.set("n", "<leader>qp", "<cmd>:cprev<cr>")
vim.keymap.set("n", "<leader>qo", "<cmd>:copen<cr>")

-- lua tree
vim.keymap.set("n", "<Leader>tt", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<Leader>tf", "<cmd>NvimTreeFindFileToggle<cr>")
vim.keymap.set("n", "<Leader>tr", "<cmd>NvimTreeRefresh<cr>")

-- language server
vim.keymap.set("n", "<Leader>vd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "<Leader>vi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
vim.keymap.set("n", "<Leader>vsh", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
vim.keymap.set("n", "<Leader>vrr", "<cmd>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "<Leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "<Leader>vh", "<cmd>lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "<Leader>vca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<Leader>vsd", "<cmd>lua vim.diagnostic.open_float({scope='line'})<CR>")
vim.keymap.set("n", "<Leader>vn", "<cmd>lua vim.diagnostic.goto_next()<CR>")
vim.keymap.set("n", "<Leader>vp", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
vim.keymap.set("n", "<Leader>vf", "<cmd>Format<CR>")

-- Escape to escape a terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})
