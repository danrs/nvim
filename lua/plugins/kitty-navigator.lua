return {
  "MunsMan/kitty-navigator.nvim",
  build = {
    "cp navigate_kitty.py ~/.config/kitty",
    "cp pass_keys.py ~/.config/kitty",
  },
  keys = {
    {
      "<M-Left>",
      function()
        require("kitty-navigator").navigateLeft()
      end,
      desc = "Move left a Split",
      mode = { "n" },
    },
    {
      "<M-Down>",
      function()
        require("kitty-navigator").navigateDown()
      end,
      desc = "Move down a Split",
      mode = { "n" },
    },
    {
      "<M-Up>",
      function()
        require("kitty-navigator").navigateUp()
      end,
      desc = "Move up a Split",
      mode = { "n" },
    },
    {
      "<M-Right>",
      function()
        require("kitty-navigator").navigateRight()
      end,
      desc = "Move right a Split",
      mode = { "n" },
    },
  },
}
