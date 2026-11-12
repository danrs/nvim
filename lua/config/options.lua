-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Allow a project-local `.nvim.lua` in the working directory (Neovim asks to
-- trust it the first time). Used to pin a code style per project.
vim.o.exrc = true

-- ROS file types that are really XML.
vim.filetype.add({
  extension = { launch = "xml", urdf = "xml", xacro = "xml", sdf = "xml" },
})
