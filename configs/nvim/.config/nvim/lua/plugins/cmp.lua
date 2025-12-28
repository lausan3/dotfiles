return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-cmdline",
    },
    -- @param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      local compare = require("cmp.config.compare")

      opts.sorting = {
        priority_weight = 2,
        comparators = {
          compare.offset, -- Favor matches closer to the cursor
          compare.exact, -- Exact matches first
          compare.score, -- THIS is the LSP's context score
          compare.recently_used,
          compare.locality, -- Favor variables in current function/file
          compare.kind, -- Favor "Variable" or "Constant" over "Snippet"
          compare.sort_text,
          compare.length,
          compare.order,
        },
      }

      -- Set up cmdline completion for Noice
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "path" },
          { name = "cmdline" },
        },
      })

      -- This merges your new mappings into the existing LazyVim mappings
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      })

      cmp.setup(opts)
    end,
  },
  {
    "numToStr/Comment.nvim",
    config = true, -- This automatically runs setup()
  },
}
