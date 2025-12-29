return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    git = { enabled = true },
    gitbrowse = { enabled = true },
    gh = { enabled = true },
    image = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    rename = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    terminal = { enabled = true },
    win = { enabled = true },
    words = { enabled = true },
    zen = { enabled = true },
  },
  keys = {
    -- Toggle explorer
    {
      "<C-e>",
      function()
        -- Look for any window containing the snacks explorer
        for _, win in ipairs(vim.api.nvim_list_wins()) do
          local buf = vim.api.nvim_win_get_buf(win)
          if vim.bo[buf].filetype == "snacks_explorer" then
            vim.api.nvim_win_close(win, true)
            return
          end
        end

        Snacks.explorer.open()
      end,
      desc = "Toggle Snacks Explorer",
    },
  },
}
