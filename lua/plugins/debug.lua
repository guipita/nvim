-- Your nvim-dap config
return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      { "igorlfs/nvim-dap-view", opts = {} },
      ...,
    },
    ...,
  },
}
