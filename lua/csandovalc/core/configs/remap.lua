vim.g.mapleader = " "

-- Execute last command
vim.keymap.set("n", "<leader>lc", vim.cmd.Ex)

-- Select all text
vim.keymap.set("n", "<leader>a", "ggVG")

-- Save the current file
vim.keymap.set("n", "<leader>u", "<cmd>update<CR>")

-- Move lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines whitout move the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- When move pgdown or pgup, set the line in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- After to make a search, use n and N to move to the next and previous match
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete the selected text and paste the text stored before in the clipboard
-- for example:
-- If the clipboard has the text "hello", and you select the text "world" and
-- press <leader>p, the text "world" will be deleted and the text "hello" will
-- be pasted
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy the { INLINE_COMMENT } to the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- selected text
vim.keymap.set("n", "<leader>Y", [["+Y]])        -- current line

-- Delete the selected text BUT DON'T copy it to the clipboard
vim.keymap.set("v", "<leader>d", [["_d]])

-- Press <C-k> to exit to normal mode
vim.keymap.set({"i", "v"}, "<C-k>", "<Esc>")

-- In normal mode, press 'Q' do nothing
vim.keymap.set("n", "Q", "<nop>")

-- Format the current buf with the lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate between the quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Navigate between the location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the word under the cursor with the format specified in the command
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Change execution permission of the current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Open plugin config file
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/csandovalc/pldotfiles/nvim/.config/nvim/lua/theprimeagen/packer.luaugins/init.lua<CR>");

-- Uses the plugin "CellularAutomaton" to make it rain
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Reload neovim config without restart
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


