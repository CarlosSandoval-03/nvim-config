return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "j-hui/fidget.nvim",
    },
    config = function()
      require "csandovalc.plugins.configs.lsp.lspconfig"
    end,
  },
  {
    "nvim-lua/plenary.nvim",
    name = "plenary",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "plenary" },
    config = function()
      require "csandovalc.plugins.configs.telescope"
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
    name = "web-devicons",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "web-devicons" },
    config = function()
      require "csandovalc.plugins.configs.trouble"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "plenary" },
    build = ":TSUpdate",
    config = function()
      require "csandovalc.plugins.configs.treesitter"
    end,
  },
  {
    "mbbill/undotree",
    config = function()
      require "csandovalc.plugins.configs.undotree"
    end,
  },
  {
    "tpope/vim-fugitive",
    config = function()
      require "csandovalc.plugins.configs.fugitive"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      require "csandovalc.plugins.configs.zenmode"
    end,
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
    config = function()
      require "csandovalc.plugins.configs.cloak"
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require "csandovalc.plugins.configs.harpoon"
    end,
  },
  {
    "andweeb/presence.nvim",
    lazy = false,
    config = function()
      require "csandovalc.plugins.configs.presence"
    end,
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
    setup = function()
      vim.cmd([[packadd wakatime/vim-wakatime]])
    end
  },
  {
    "stevearc/oil.nvim",
    dependencies = { "web-devicons" },
    config = function()
      require "csandovalc.plugins.configs.oil"
    end,
  },
  {
    "edKotinsky/Arduino.nvim",
    config = function()
      require "csandovalc.plugins.configs.arduino"
    end,
  },
}

