vim.opt.tabstop = 2
vim.opt.title = true
vim.opt.titlestring = [[Neovim - $t]]
vim.opt.clipboard = "unnamedplus"
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.api.nvim_create_autocmd("FileType", {
    pattern = "make",
    callback = function()
        vim.opt_local.expandtab = false -- use real tabs
        vim.opt_local.tabstop = 8       -- Make expects tab width 8 (important!)
        vim.opt_local.shiftwidth = 8
    end,
})
vim.opt.list = true
vim.opt.listchars = {
    tab = "»·", -- shows a tab as » followed by spaces
    trail = "·", -- trailing spaces
    nbsp = "␣", -- non-breaking spaces
}
