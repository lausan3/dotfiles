-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Show Code Actions like VSCode (well, similar)
keymap.set({ "n", "v" }, "<M-.>", require("actions-preview").code_actions, { desc = "Show Code Actions" })

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "<C-t>", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Flutter keymaps
keymap.set("n", "<leader>flr", "<cmd>FlutterRun<cr>", { desc = "Run Flutter App" })
keymap.set("n", "<leader>flR", "<cmd>FlutterRestart<cr>", { desc = "Hot Restart" })
keymap.set("n", "<leader>flh", "<cmd>FlutterReload<cr>", { desc = "Hot Reload" })
keymap.set("n", "<leader>flq", "<cmd>FlutterQuit<cr>", { desc = "Quit Flutter App" })
keymap.set("n", "<leader>fld", "<cmd>FlutterDevices<cr>", { desc = "Select Device/Emulator" })
keymap.set("n", "<leader>flD", "<cmd>FlutterDebug<cr>", { desc = "Debug Flutter App" })
keymap.set("n", "<leader>fle", "<cmd>FlutterEmulators<cr>", { desc = "List Emulators" })
keymap.set("n", "<leader>flo", "<cmd>FlutterOutlineToggle<cr>", { desc = "Toggle Flutter Outline" })
keymap.set("n", "<leader>flldt", "<cmd>FlutterDevTools<cr>", { desc = "Open Flutter DevTools" })
keymap.set("n", "<leader>fllc", "<cmd>FlutterLogClear<cr>", { desc = "Clear Flutter Logs" })
