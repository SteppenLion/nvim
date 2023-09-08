local map = vim.keymap.set
return {
    {
    "VonHeikemen/lsp-zero.nvim",
    event = "VeryLazy",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig", event = "VeryLazy" },
      -- LSP servers manager
      { "williamboman/mason.nvim", config = true, event = "VeryLazy" },
      { "williamboman/mason-lspconfig.nvim", event = "VeryLazy" },
      -- Autocompletion
      { "hrsh7th/nvim-cmp", event = "VeryLazy" },
      { "hrsh7th/cmp-buffer", event = "VeryLazy" },
      { "hrsh7th/cmp-path", event = "VeryLazy" },
      { "hrsh7th/cmp-nvim-lsp", event = "VeryLazy" },
      { "hrsh7th/cmp-nvim-lua", event = "VeryLazy" },
    },
    config = function()
      -- Lsp
      local lsp = require("lsp-zero")
      lsp.preset("recommended")

      -- disable defaults mappings
      lsp.set_preferences({
        set_lsp_keymaps = false,
      })

      -- lsp servers based on: https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
      lsp.ensure_installed({
        "html",
        "tsserver",
        "stylelint_lsp",
        "eslint",
        "marksman",
        "pyright",
        "rust_analyzer",
        "bashls",
      })

      local cmp = require("cmp")
      local cmp_select = { behavior = cmp.SelectBehavior.Select }
      local cmp_mappings = lsp.defaults.cmp_mappings({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
      })

      lsp.setup_nvim_cmp({
        mapping = cmp_mappings,
      })

      lsp.on_attach(function(_, bufnr)
        map("n", "gI", vim.lsp.buf.implementation, { desc = "[G]oto [I]mplementation" })
        map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
        map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
        map("n", "<leader>f", vim.lsp.buf.format, { desc = "[F]ormat current buffer" })

        local telescope = require("telescope.builtin")
        map("n", "<leader>ds", telescope.lsp_document_symbols, { desc = "[D]ocument [S]ymbols" })
        map("n", "<leader>ws", telescope.lsp_dynamic_workspace_symbols, { desc = "[W]orkspace [S]ymbols" })

        -- Create a command `:Format` local to the LSP buffer
        vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
          if vim.lsp.buf.format then
            vim.lsp.buf.format()
          elseif vim.lsp.buf.formatting then
            vim.lsp.buf.formatting()
          end
        end, { desc = "Format current buffer with LSP" })
      end)

      lsp.nvim_workspace()
      lsp.setup()
    end,
  },
}

