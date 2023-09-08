return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {"kyazdani42/nvim-web-devicons"},
     config = function()
        require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    side = "right",
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
