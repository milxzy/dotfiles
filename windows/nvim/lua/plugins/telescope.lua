return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {}, -- don’t ignore dotfiles
      find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" }, -- includes .files
    },
  },
}
