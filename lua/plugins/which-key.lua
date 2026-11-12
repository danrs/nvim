-- which-key: shows the keys you can press next as soon as you start a prefix
-- (<leader>, g, z, [, ], <C-w>, d/y/c operators, " registers, ' marks).
-- LazyVim ships it already; this makes it appear instantly for <leader> and
-- as a full-width bar at the bottom instead of a small floating box.
--
--   <leader>?      every keybind for the current buffer
--   <leader>sk     search all keymaps
--   <C-w><space>   window-management menu
return {
  {
    "folke/which-key.nvim",
    opts = {
      preset = "classic", -- full-width bar at the bottom ("helix" = small box bottom-right)
      delay = function(ctx)
        -- Instant for <leader> and the built-in menus (marks, registers, spelling),
        -- a short delay for everything else so a quick `dd` or `gg` doesn't flash it.
        if ctx.plugin or vim.startswith(ctx.keys, vim.g.mapleader or "\\") then
          return 0
        end
        return 100
      end,
      show_help = true, -- footer with <bs> back / <esc> close
      show_keys = true, -- echo the keys typed so far
      win = {
        border = "rounded",
        padding = { 1, 2 },
      },
      layout = {
        width = { min = 20 },
        spacing = 3,
      },
    },
  },
}
