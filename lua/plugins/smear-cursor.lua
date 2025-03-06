return {
  "sphamba/smear-cursor.nvim",
  opts = function(_, opts)
    opts.stiffness = 0.8
    opts.trailing_stiffness = 0.5
    opts.distance_stop_animating = 0.5
    opts.hide_target_hack = false
    return opts
  end,
}
