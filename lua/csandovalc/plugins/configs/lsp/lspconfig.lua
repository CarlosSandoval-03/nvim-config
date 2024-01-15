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

