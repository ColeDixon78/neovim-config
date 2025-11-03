return {
    "mbbill/undotree",
    config = function()
        vim.g.undtree_DiffCommand = "FC"
        vim.g.undotree_SetFocusWhenToggle = true
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
}
