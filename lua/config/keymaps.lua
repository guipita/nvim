-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map <A-n> to Normal mode
map("i", "<A-n>", "<Esc>", opts)

-- Map <A-v> to Visual mode
map("n", "<A-v>", "v", opts)

-- Map <A-i> to Insert mode
map("n", "<A-i>", "i", opts)

-- Map <A-a> to Append mode
map("n", "<A-a>", "a", opts)

-- Map <A-s> to S-mode
map("n", "<A-s>", "S", opts)

vim.keymap.set("n", "<leader>dv", function()
  require("dap-view").toggle()
end, { desc = "Toggle nvim-dap-view" })
