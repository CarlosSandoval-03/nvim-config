require("oil").setup({
    columns = {
        "permissions",
        "size",
        "icon",
    },
    win_options = {
        signcolumn = "yes",
    },
    delete_to_trash = true,
})

-- Open oil in parent directory
vim.keymap.set("n", "<leader>e", "<CMD>Oil --float<CR>")

