local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files)
vim.keymap.set("n", "<C-p>", builtin.git_files)
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({
        search = vim.fn.input("Grep > ")
    })
end)
vim.keymap.set("n", "<leader>vh", builtin.help_tags)

-- Search word under cursor (word)
vim.keymap.set("n", "<leader>pws", function()
    local word = vim.fn.expand("<cword>")
    builtin.grep_string({ search = word })
end)

-- Search space separated text under cursor (WORD)
vim.keymap.set("n", "<leader>pWs", function()
    local word = vim.fn.expand("<cWORD>")
    builtin.grep_string({ search = word })
end)
