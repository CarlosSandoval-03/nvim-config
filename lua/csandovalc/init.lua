require("csandovalc.core")
require("lazy").setup({
    spec = "csandovalc.plugins",
    change_detection = { notify = false }
})

-- Load the colorscheme
function SetTheme(name)
    theme = name or "tokyonight"
    vim.cmd.colorscheme(theme)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetTheme()

