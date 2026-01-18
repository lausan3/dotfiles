-- point vim to use node v22 binary
vim.env.PATH = "/Users/anthony/.nvm/versions/node/v22.0.0/bin/:/usr/local/bin:" .. vim.env.PATH

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
