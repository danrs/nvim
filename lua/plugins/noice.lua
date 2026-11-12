-- Classic vim command line: `:` at the bottom of the screen like `/`, showing
-- the typed `:` / `:!` rather than noice's icons in their place.
return {
  {
    "folke/noice.nvim",
    opts = {
      presets = { command_palette = false },
      cmdline = {
        view = "cmdline",
        format = {
          cmdline = { icon = "", conceal = false },
          filter = { icon = "", conceal = false },
          lua = { icon = "", conceal = false },
          help = { icon = "", conceal = false },
          calculator = { icon = "", conceal = false },
        },
      },
    },
  },
}
