return {
  -- Commented out plugins are already included by LazyVim
  -- Flash: High-speed navigation
  -- {
  --   "folke/flash.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  --   keys = require("config.mappings.flash"),
  -- },
  --
  -- -- Treesitter: Better Syntax Highlighting
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   event = { "BufReadPost", "BufNewFile" },
  --   build = ":TSUpdate",
  --   opts = require("plugins.options.treesitter"),
  -- },

  -- Gitsigns: In-editor git highlighting
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    opts = {},
  },

  -- Nvim-Tree: File explorer
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  --   keys = require("config.mappings.nvim-tree"),
  --   opts = require("plugins.options.nvim-tree"),
  -- },
  --
  -- -- Telescope: Fuzzy Finder
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   cmd = "Telescope",
  --   opts = require("plugins.options.telescope"),
  -- },

  -- DAP: Debug Adapter Protocol
  {
    "mfussenegger/nvim-dap",
  },
}
