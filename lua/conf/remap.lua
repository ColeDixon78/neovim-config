vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")
vim.keymap.set("n", "h", "*")
vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")
vim.keymap.set("n", "<leader>nh", "<cmd>noh<cr>")
vim.keymap.set("n", "<leader>c", "<cmd>close<cr>")
vim.keymap.set("n", "<leader>s", "<cmd>vsplit<cr>")
vim.keymap.set("n", "<leader>hs", "<cmd>split<cr>")
vim.keymap.set("n", "<leader>p", "<cmd>bp<cr>")
vim.keymap.set("n", "<leader>n", "<cmd>bn<cr>")
vim.keymap.set("n", "<leader>ls", "<cmd>ls<cr>")
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Higlights text when yanking",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
