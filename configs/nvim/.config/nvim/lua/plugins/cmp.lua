return {
  {
    "hrsh7th/nvim-cmp",
    -- @param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      -- This merges your new mappings into the existing LazyVim mappings
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      })
    end,
  },
  {
    "numToStr/Comment.nvim",
    config = true, -- This automatically runs setup()
  },
}
