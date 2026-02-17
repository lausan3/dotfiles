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

  -- Neo-tree: File explorer
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   keys = {
  --     { "<C-n>", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
  --     { "<leader>e", "<cmd>Neotree focus<cr>", desc = "Focus Neo-tree" },
  --   },
  --   opts = {
  --     filesystem = {
  --       -- This helps with your directory issue:
  --       -- it ensures the tree follows your current working directory
  --       follow_current_file = { enabled = true },
  --       use_libuv_file_watcher = true,
  --       filtered_items = {
  --         visible = true, -- shows dotfiles by default
  --         hide_dotfiles = false,
  --         hide_gitignored = false,
  --       },
  --     },
  --     window = {
  --       width = 30,
  --       mappings = {
  --         -- This makes it feel more like NvChad/Telescope
  --         ["<space>"] = "none", -- disable space so it doesn't conflict with your leader
  --       },
  --     },
  --   },
  -- },
  -- Telescope: Fuzzy Finder
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   cmd = "Telescope",
  --   opts = require("plugins.options.telescope"),
  -- },

  -- DAP: Debug Adapter Protocol
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    -- Do NOT use config = true or a config function that calls dap.setup()
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()

      -- Correct way to configure nvim-dap is via listeners
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "aznhe21/actions-preview.nvim",
    event = "VeryLazy",
  },
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true,
    default_mappings = true,
    default_commands = true,
  },
  {
    "stevearc/confirm.nvim",
    opts = {
      formatters_by_ft = {
        cpp = { "clang-format -style=file" },
        c = { "clang-format -style=file" },
      },
      format_on_save = {
        allow_filetypes = { "cpp", "c" },
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },
}
