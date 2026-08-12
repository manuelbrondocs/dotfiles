return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
        config = function()
                --Global defaults for all pickers
        require('telescope').setup({
            defaults = {
                -- Explicitly configure ripgrep arguments to include hidden files
                vimgrep_arguments = {
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                    "--hidden"
                },
            },
            pickers = {
                find_files = {
                    hidden = true, -- Shows dotfiles in file search
                },
                live_grep = {
                    -- Ensures live_grep strictly follows the vimgrep_arguments
                    additional_args = function(_)
                        return {}
                    end,
                },
            },
        })

        --standard keymaps referencing the global config
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
}
