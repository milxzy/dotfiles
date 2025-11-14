return {
  {
    "zbirenbaum/copilot.lua",
    opts = function(_, opts)
      opts.suggestion = opts.suggestion or {}
      opts.suggestion.keymap = opts.suggestion.keymap or {}
      opts.suggestion.keymap.accept = "<M-;>" -- Alt+; to accept
      return opts
    end,
  },
}
