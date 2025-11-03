vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")
vim.keymap.set("n", "h", "*")
vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")
vim.keymap.set("n", "<leader>nh", "<cmd>noh<cr>")
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Higlights text when yanking",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
