return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  require("catppuccin").setup({
    custom_highlights = function(colors)
      return {
        NormalFloat = { bg = colors.base, fg = colors.text },
        MultiCursor = { bg = colors.lavender, fg = colors.base },
        MultiCursorMain = { bg = colors.pink, fg = colors.base },
      }
    end,
  }),
}
