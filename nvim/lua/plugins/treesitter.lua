return {

    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
        sync_install = false,
        auto_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = { "c", "cpp", "lua", "racket", "vim", "markdown" },
      })
    end
}
