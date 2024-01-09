local ibl = require "ibl"

return {
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        options = { cursorline = false }
      },
      plugins = {
        gitsigns = { enabled = true },
        -- set the following kitty options:
        --   allow_remote_control socket-only
        --   listen_on unix:/tmp/kitty
        kitty = {
          enabled = true,
          font = "+2"
        },
        alacritty = {
          enabled = true,
          font = "+2"
        }
      },
      on_open = function()
        ibl.update { enabled = false } -- indentation guides
      end,
      on_close = function()
        ibl.update { enabled = true }
      end
    }
  },
  { "folke/twilight.nvim" }
}
