return {
    -- TODO: Script to change theme faster
    {
        "folke/tokyonight.nvim",
    },
    {
        "rose-pine/neovim",
        lazy = false,
        priority = 1000,
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    },
}
