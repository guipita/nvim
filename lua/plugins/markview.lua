return {
  -- Ensure treesitter has a higher priority as a start plugin
  -- in order for its rtp to effectively have a lower priority.
  -- 50 is lazy's default priority.
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    priority = 50,
  },
  {
    "OXY2DEV/markview.nvim",
    -- ensure markview is treated as a start plugin
    lazy = false,
    -- and is loaded after nvim-treesitter
    priority = 49,
  },
}
