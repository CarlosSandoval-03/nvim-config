return {
    "folke/tokyonight.nvim",
    "nvim-lua/plenary.nvim",        -- Telescope Dependency
    "nvim-tree/nvim-web-devicons",  -- Trouble Dependency
    {
        "folke/trouble.nvim",
         dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
}
