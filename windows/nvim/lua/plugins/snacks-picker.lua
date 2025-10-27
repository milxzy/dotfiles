return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    -- Use snacks dashboard instead of alpha
    opts.dashboard = {
      enabled = true,
      preset = {
        header = [[
                                                     
  ███╗   ███╗██╗██╗     ██╗  ██╗███████╗██╗   ██╗  
  ████╗ ████║██║██║     ╚██╗██╔╝╚══███╔╝╚██╗ ██╔╝  
  ██╔████╔██║██║██║      ╚███╔╝   ███╔╝  ╚████╔╝   
  ██║╚██╔╝██║██║██║      ██╔██╗  ███╔╝    ╚██╔╝    
  ██║ ╚═╝ ██║██║███████╗██╔╝ ██╗███████╗   ██║     
  ╚═╝     ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     
                                                     
        ]],
        keys = {
          { icon = "󰈞 ", key = "f", desc = "Find File", action = ":lua Snacks.picker.files()" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "p", desc = "Projects", action = ":lua Snacks.picker.projects()" },
          { icon = "󰱼 ", key = "g", desc = "Find Text", action = ":lua Snacks.picker.grep()" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.picker.recent()" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = function()
              require("snacks.picker").files({ cwd = vim.fn.stdpath("config") })
            end,
          },

          { icon = "󰑓 ", key = "s", desc = "Restore Session", action = ':lua require("persistence").load()' },
          {
            icon = " ",
            key = "e",
            desc = "File Explorer",
            action = ":lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<leader>e', true, false, true), 'm', true)",
          },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    }

    return opts
  end,
}
