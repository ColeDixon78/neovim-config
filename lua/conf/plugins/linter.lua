return {
    "mfussenegger/nvim-lint",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            svelte = { "eslint_d" },
            typescript = { "eslint_d" },
            javascript = { "eslint_d" },
            cpp = { "cpplint" }
        }
        vim.api.nvim_create_autocmd({ "BufWritePost" }, {
            callback = function()
                lint.try_lint()
            end
        })
    end
}
