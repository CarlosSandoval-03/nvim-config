vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local csandovalc_fugitive = vim.api.nvim_create_augroup(
    "csandoval_fugitive",
    {}
)

local autocmd = vim.api.nvim_create_autocmd
autocmd(
    "BufWinEnter",
    {
        group = csandovalc_fugitive,
        pattern = "*",
        callback = function()
            if vim.bo.ft ~= "fugitive" then
                return
            end

            local bufnr = vim.api.nvim_get_current_buf()
            local opts = { buffer = bufnr, remap = false }

            -- git push
            vim.keymap.set("n", "<leader>p", function()
                vim.cmd.Git("push")
            end, opts)

            -- git pull (rebase always)
            vim.keymap.set("n", "<leader>P", function()
                vim.cmd.Git("pull", "--rebase")
            end, opts)

            -- git push -u origin <branch>
            vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
        end
    }
)
