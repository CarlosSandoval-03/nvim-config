local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({
    global_settings = {
        save_on_toggle = true,
        save_on_change = true,
    },
})
-- REQUIRED

-------- Use Telescope UI --------
-- Note: This UI does not display the list indexes. But the buffer
-- names follow the order of the list (from bottom to top).
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })

-------- KEYMAPS --------
-- Add the current buffer to the first slot in the list of buffers
vim.keymap.set("n", "<leader>hf", function() harpoon:list():prepend() end)

-- Add the current buffer to the list of buffers
vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)

-- Remove the current buffer from the list of buffers
vim.keymap.set("n", "<leader>hr", function() harpoon:list():remove() end)

-- Clear the list of buffers
vim.keymap.set("n", "<leader>hc", function() harpoon:list():clear() end)

-- Move to the numered entry in the list (1-4)
vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)

-- Remove the entry in the list (1-4)
vim.keymap.set("n", "<leader>1", function() harpoon:list():removeAt(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():removeAt(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():removeAt(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():removeAt(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
