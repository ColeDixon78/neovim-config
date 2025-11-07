return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.9',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        require('telescope').setup({
            defaults = {
                preview = { treesitter = false }
            }
        })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>*', builtin.planets, { desc = 'Telescope live grep' })
    end
}
