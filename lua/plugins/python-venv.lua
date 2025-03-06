return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-dap-python",
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  lazy = false,
  branch = "regexp", -- This is the regexp branch, use this for the new version
  config = function()
    local function on_venv_activate()
      local command_run = false

      local function run_shell_command()
        local venv = require("venv-selector").venv()

        if command_run == false then
          local command = "source " .. venv .. "/bin/activate"
          vim.api.nvim_feedkeys(command .. "\n", "n", false)
          command_run = true
        end
      end

      vim.api.nvim_create_augroup("TerminalCommands", { clear = true })

      vim.api.nvim_create_autocmd("TermEnter", {
        group = "TerminalCommands",
        pattern = "*",
        callback = run_shell_command,
      })
    end

    require("venv-selector").setup({
      settings = {
        options = {
          on_venv_activate_callback = on_venv_activate,
        },
      },
    })
  end,
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { "<leader>v", "<cmd>VenvSelect<cr>" },
  },
}
