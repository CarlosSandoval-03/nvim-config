return {
    {
		"nvim-lua/plenary.nvim",
        name = "plenary",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "plenary" },
    },
    {
		"nvim-tree/nvim-web-devicons",
        name = "web-devicons",
    },
    {
		"folke/trouble.nvim",
         dependencies = { "web-devicons" },
    },
    {
		"nvim-treesitter/nvim-treesitter",
        dependencies = { "plenary" },
        build = ":TSUpdate",
    },
    {
		"mbbill/undotree",
    },
    {
		"tpope/vim-fugitive",
    },
    {
		"nvim-treesitter/nvim-treesitter-context",
    },
    {
		"folke/zen-mode.nvim",
    },
    {
        "folke/twilight.nvim",
    },
    {
		"github/copilot.vim",
    },
    {
        -- This plugin is only for joke, can be removed
		"eandrju/cellular-automaton.nvim",
    },
    {
		"laytan/cloak.nvim",
        opts = function()
            return require "csandovalc.plugins.configs.cloak"
        end,
        config = function(_, opts)
            require("cloak").setup(opts)
        end,
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "andweeb/presence.nvim",
        lazy = false,
        opts = function()
            return require "csandovalc.plugins.configs.presence"
        end,
        config = function(_, opts)
            require("presence").setup(opts)
        end,
    },
}

