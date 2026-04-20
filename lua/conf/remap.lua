vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")
vim.keymap.set("n", "h", "*")
vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")
vim.keymap.set("n", "yim",
    function()
        local col = vim.api.nvim_win_get_cursor(0)[2]
        local char = vim.api.nvim_get_current_line():sub(col + 1, col + 1)
        if char == '$' then
            vim.cmd([[normal! lyt$]]);
        else
            vim.cmd([[silent! normal! T$yt$]]);
        end
    end
)
vim.keymap.set("n", "yam",
    function()
        local charUnderCursor = vim.fn.getregion(vim.fn.getpos('.'), vim.fn.getpos('.'));
        if charUnderCursor == '$' then
            vim.cmd([[normal! yf$]]);
        else
            vim.cmd([[silent! normal! F$yf$]]);
        end
    end
)
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

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-t>", "<C-w>j")
vim.keymap.set("n", "<A-n>", "<C-w>k")
vim.keymap.set("n", "<A-s>", "<C-w>l")
vim.keymap.set("i", "<A-h>", "<Esc><C-w>h")
vim.keymap.set("i", "<A-t>", "<Esc><C-w>j")
vim.keymap.set("i", "<A-n>", "<Esc><C-w>k")
vim.keymap.set("i", "<A-s>", "<Esc><C-w>l")
vim.keymap.set("t", "<A-h>", "<C-\\><C-w>h")
vim.keymap.set("t", "<A-t>", "<C-\\><C-w>j")
vim.keymap.set("t", "<A-n>", "<C-\\><C-w>k")
vim.keymap.set("t", "<A-s>", "<C-\\><C-w>l")
vim.keymap.set("n", "<A-H>", "<C-w><2")
vim.keymap.set("n", "<A-T>", "<C-w>-2")
vim.keymap.set("n", "<A-N>", "<C-w>+2")
vim.keymap.set("n", "<A-S>", "<C-w>>2")
