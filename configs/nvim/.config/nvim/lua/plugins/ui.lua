return {
  -- Hex, RGB, and HSL color highlighter. Also supports tailwind colors
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = function(opts)
      opts.user_default_options = {
        RRGGBBAA = true,
        AARRGGBB = true,
        tailwind = true,
      }

      return opts
    end,
  },

  "stevearc/dressing.nvim",
  "nvim-tree/nvim-web-devicons",
}
