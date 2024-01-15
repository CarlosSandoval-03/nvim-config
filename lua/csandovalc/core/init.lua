require("csandovalc.core.configs.set")
require("csandovalc.core.configs.remap")
require("csandovalc.core.configs.lazy_init")

local augroup = vim.api.nvim_create_augroup
local csandovalGroup = augroup('csandovalc', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 100,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = csandovalGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
