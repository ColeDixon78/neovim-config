return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function()
        local ts = require("nvim-treesitter")
        ts.install({
            'lua',
            'cpp',
            'latex',
            'markdown',
            'markdown_inline',
            'python',
            'javascript',
            'typescript',
            'haskell',
            'svelte',
            'dockerfile',
            'html' })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { '<filetype>' },
            callback = function() vim.treesitter.start() end,
        })
    end
}
