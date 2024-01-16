local targets = require("csandovalc.plugins.configs.lsp.targets")

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = targets,
})

local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
local git_root_dir = lspconfig.util.root_pattern(".git", vim.fn.getcwd())

-------------------------------------------------------------------------------
--- System Programming
-------------------------------------------------------------------------------
-- Arduino
lspconfig.arduino_language_server.setup({
    filetypes = { "ino", "arduino" },
    root_dir = git_root_dir,
})

-- Assembly
lspconfig.asm_lsp.setup({
    filetypes = { "asm", "s", "S", "vmasm" },
    root_dir = git_root_dir,
})

-- Bash
lspconfig.bashls.setup({ filetypes = { "sh", "zsh" }, })

-- C/C++
lspconfig.clangd.setup({ filetypes = { "c", "cpp", "h", "hpp", "objc", "objcpp", "proto" }, })

-- CMake and Make
lspconfig.cmake.setup({})
--lspconfig.autotools_ls.setup({})

-- Rust
lspconfig.rust_analyzer.setup({})
-- SystemVerilog
lspconfig.svlangserver.setup({})

-- Zig
lspconfig.zls.setup({})

-------------------------------------------------------------------------------
--- Web Programming
-------------------------------------------------------------------------------
-- CSS
lspconfig.cssls.setup({})
lspconfig.tailwindcss.setup({})

-- ESLint
lspconfig.eslint.setup({})

-- Go
lspconfig.gopls.setup({})
lspconfig.golangci_lint_ls.setup({})

-- GraphQL
lspconfig.graphql.setup({})

-- HTML
lspconfig.html.setup({})

-- HTMX
lspconfig.htmx.setup({})

-- Java
lspconfig.jdtls.setup({})

-- JSON
lspconfig.jsonls.setup({
    capabilities = capabilities,
})

-- JavaScript/TypeScript
lspconfig.tsserver.setup({})

-- Python
lspconfig.pyright.setup({})

-- Ruby
lspconfig.ruby_ls.setup({})

-- SQL
lspconfig.sqlls.setup({})

-------------------------------------------------------------------------------
--- Other Stuff
-------------------------------------------------------------------------------
-- Docker
lspconfig.dockerls.setup({})
lspconfig.docker_compose_language_service.setup({})

-- LaTeX
lspconfig.ltex.setup({})

-- Lua
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})

-- TOML
lspconfig.taplo.setup({})

-------------------------------------------------------------------------------
--- General Settings
-------------------------------------------------------------------------------
local function attach(opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.document_symbol() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end
