return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {"kyazdani42/nvim-web-devicons"},
     config = function()
        require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    side = "right",
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
    end
    
}
