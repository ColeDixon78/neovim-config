return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                c = { "astyle" },
                lua = { "stylua" },
                python = { "black", "reorder-python-imports" },
                javascript = { "prettierd" },
                typescript = { "prettierd" },
                svelte = { "prettierd" },
                tex = { "llf" },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback"
            }
        })
    end
}
