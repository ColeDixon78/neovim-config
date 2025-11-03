return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = { theme = "everforest" },
            extensions = { "lazy" },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { { "filename", path = 1 } },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { "searchcount" },
                lualine_z = { "location" },
            },
        })
    end,
}
