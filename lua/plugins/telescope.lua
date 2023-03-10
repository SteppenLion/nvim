return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "tsakirist/telescope-lazy.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        sorting_strategy = 'descending',
        layout_config = {
          prompt_position = 'bottom'
        }
      },
    })
  end
}
