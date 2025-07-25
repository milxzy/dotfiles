return {
  "Exafunction/windsurf.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "saghen/blink.cmp",
      dependencies = {
        "Exafunction/codeium.nvim",
      },
      opts = {
        sources = {
          default = { "lsp", "path", "snippets", "buffer", "codeium" },
          providers = {
            codeium = {
              name = "Codeium",
              module = "codeium.blink",
              async = true,
            },
          },
        },
      },
    },
  },
  config = function()
    require("codeium").setup({
      enable_cmp_source = false, -- important to avoid nvim-cmp
      virtual_text = {
        enabled = true,
        manual = false,
        default_filetype_enabled = true,
        idle_delay = 75,
        map_keys = true,
        key_bindings = {
          accept = "<Tab>",
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
    })
  end,
}
