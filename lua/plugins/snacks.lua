-- Show hidden files (dotfiles) by default in the file, grep and explorer pickers.
-- Gitignored files stay hidden; toggle them with <a-i> (or I in the explorer).
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = { hidden = true },
        grep = { hidden = true },
        explorer = { hidden = true },
      },
    },
  },
}
