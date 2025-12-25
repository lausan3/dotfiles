return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for better UI
    },
    config = function()
      require("flutter-tools").setup({
        ui = {
          border = "rounded",
          notification_style = "plugin",
        },
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        widget_guides = {
          enabled = true,
        },
        hot_reload = true,
        lsp = {
          color_render = true,
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
            analysisExcludedFolders = {
              vim.fn.expand("$HOME/.pub-cache"),
            },
            updateImportsOnRename = true,
          },
        },
      })
    end,
  },
}
