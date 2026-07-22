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
            'supercollider',
            'markdown',
            'markdown_inline',
            'python',
            'javascript',
            'typescript',
            'haskell',
            'svelte',
            'dockerfile',
            'html',
            'zig',
        })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'svelte', 'python', 'zig', 'cpp', 'lua', 'markdown', 'haskell' },
            callback = function() vim.treesitter.start() end,
        })
    end
}
