return {
  "nvim-lua/plenary.nvim",
  { "NvChad/base46", branch = "v2.0",
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  -- Only load whichkey after all the gui
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  "folke/neodev.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "ThePrimeagen/vim-be-good",
  { 'IogaMaster/neocord', event = "VeryLazy" },
}

