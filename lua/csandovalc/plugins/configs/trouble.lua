vim.keymap.set("n", "<leader>d", function()
    require("trouble").toggle()
end)

vim.keymap.set("n", "[d", function()
    require("trouble").next({ skip_groups = true, jump = true })
end)

vim.keymap.set("n", "]d", function()
    require("trouble").previous({ skip_groups = true, jump = true })
end)
