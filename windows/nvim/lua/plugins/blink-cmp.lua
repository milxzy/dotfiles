return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter",
        ["<C-j>"] = { "select_next", "fallback" }, -- Ctrl+J to go down
        ["<C-k>"] = { "select_prev", "fallback" }, -- Ctrl+K to go up
        ["<Down>"] = { "select_next", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" }, -- Enter to accept
        ["<C-l>"] = { "select_and_accept" }, -- Ctrl+L to accept
        ["<C-e>"] = { "hide" }, -- Ctrl+E to hide menu
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      },
    },
  },
}
