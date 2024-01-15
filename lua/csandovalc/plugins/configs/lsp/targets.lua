-- I know, this is awful. I'm sorry. I'll fix it later, or maybe I won't.
-- But it works, and that's what matters.

local sys_programming = {
    "arduino_language_server",
    "asm_lsp",
    -- Something is wrong with this one, I installed it manually.
    --"autotools-language-server", -- Make
    "bashls",
    "clangd",
    "cmake",
    "rust_analyzer",
    "svlangserver", -- SystemVerilog
    "zls", -- Zig
}

local web_programming = {
    "cssls",
    "eslint",
    "golangci_lint_ls",
    "gopls",
    "graphql",
    "html",
    "htmx",
    "jdtls", -- Java Eclipse LSP
    "jsonls",
    "tsserver",
    "pyright",
    "ruby_ls",
    "sqlls",
    "tailwindcss",
}

local other_stuff = {
    "dockerls",
    "docker_compose_language_service",
    "ltex", -- LaTeX
    "lua_ls",
    "taplo", -- TOML
}

local M = {}
for _, v in ipairs(sys_programming) do
    table.insert(M, v)
end
for _, v in ipairs(web_programming) do
    table.insert(M, v)
end
for _, v in ipairs(other_stuff) do
    table.insert(M, v)
end

return M
