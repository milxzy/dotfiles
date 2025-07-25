return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local button = require("alpha.themes.dashboard").button
    opts.section.buttons.val[#opts.section.buttons.val + 1] =
      button("e", "  File Explorer", "<cmd>NvimTreeToggle<CR>")
  end,
}
