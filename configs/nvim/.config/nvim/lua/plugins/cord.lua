return {
  {
    "vyfor/cord.nvim",
    -- build = ":Cord update",
    event = "VeryLazy",
    opts = function()
      local icon_api = require("cord.api.icon")

      vim.filetype.add({
        pattern = {
          ["*%log|LOG"] = "log",
        },
      })

      return {
        enabled = true,
        log_level = vim.log.levels.OFF,
        editor = {
          client = "neovim",
          icon = icon_api.get("neovim"),
          tooltip = "Neovim",
        },
        display = {
          theme = "catpuccin",
          flavor = "dark",
          view = "full",
          swap_fields = false,
          swap_icons = false,
        },
        idle = {
          enabled = true,
          timeout = 300000,
          show_status = false,
          ignore_focus = true,
          unidle_on_focus = true,
          smart_idle = true,
          details = "Idling",
          state = nil,
          tooltip = "💤",
          icon = nil,
        },
        text = {
          default = nil,
          workspace = function(opts)
            return "Working on " .. opts.workspace
          end,
          viewing = function(opts)
            return "Viewing " .. opts.filename
          end,
          editing = function(opts)
            return "Editing " .. opts.filename
          end,
          file_browser = function(opts)
            return "Browsing files in " .. opts.name
          end,
          plugin_manager = function(opts)
            return "Managing plugins in " .. opts.name
          end,
          lsp = function(opts)
            return "Configuring LSP in " .. opts.name
          end,
          docs = function(opts)
            return "Reading " .. opts.name
          end,
          vcs = function(opts)
            return "Committing changes in " .. opts.name
          end,
          notes = function(opts)
            return "Taking notes in " .. opts.name
          end,
          debug = function(opts)
            return "Debugging in " .. opts.name
          end,
          test = function(opts)
            return "Testing in " .. opts.name
          end,
          diagnostics = function(opts)
            return "Fixing problems in " .. opts.name
          end,
          games = function(opts)
            return "Playing " .. opts.name
          end,
          terminal = function(opts)
            return "Running commands in " .. opts.name
          end,
          dashboard = "Home",
        },
        buttons = {
          {
            label = "View repository",
            url = function(opts)
              return opts.repo_url
            end,
          },
          {
            label = "View my dotfiles",
            url = function()
              return "https://github.com/lausan3/dotfiles/tree/main/configs/nvim/.config/nvim"
            end,
          },
        },
        assets = {
          lua = icon_api.get("lua"),
          python = icon_api.get("python"),
          javascript = icon_api.get("javascript"),
          typescript = icon_api.get("typescript"),
          rust = icon_api.get("rust"),
          go = icon_api.get("go"),
          dart = icon_api.get("dart"),
          html = icon_api.get("html"),
          css = icon_api.get("css"),
          json = icon_api.get("json"),
          markdown = icon_api.get("markdown"),
          toml = icon_api.get("toml"),
          yaml = icon_api.get("yaml"),
          sh = icon_api.get("bash"),
          c = icon_api.get("c"),
          cpp = icon_api.get("cpp"),
          java = icon_api.get("java"),
          ruby = icon_api.get("ruby"),
          php = icon_api.get("php"),
          csharp = icon_api.get("csharp"),
          kotlin = icon_api.get("kotlin"),
          swift = icon_api.get("swift"),
          jsx = icon_api.get("react"),
          tsx = icon_api.get("react"),
          cmake = icon_api.get("cmake"),
          xml = icon_api.get("xml"),
          log = icon_api.get("log"),

          -- Non-language Icons
          file_browser = icon_api.get("folder"),
          terminal = icon_api.get("terminal"),
          debug = icon_api.get("bug"),
          test = icon_api.get("test"),
        },
      }
    end,
  },
}
