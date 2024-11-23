-- I know, this is awful. I'm sorry. I'll fix it later, or maybe I won't.
-- But it works, and that's what matters.

local sys_programming = {
  --"arduino_language_server",
  --"asm_lsp",
  --"bashls",
  "clangd",
  "cmake",
  --"cobol_ls", -- COBOL
  "rust_analyzer",
  --"svlangserver", -- SystemVerilog
  --"zls", -- Zig
}

local web_programming = {
  "cssls",
  "eslint",
  "golangci_lint_ls",
  "gopls",
  "graphql",
  "html",
  --"htmx",
  "jdtls", -- Java Eclipse LSP
  "jsonls",
  "ts_ls",
  "pyright",
  "pylsp",
  --"ruby_ls",
  "tailwindcss",
  --"omnisharp", -- C#
}

local cloud = {
  --"dockerls",
  "docker_compose_language_service",
  "terraformls", -- Terraform
  "tflint", -- Terraform Linter
}

local utils = {
  "sqls", -- SQL
  "vacuum", -- OpenAPI (Swagger)
  "cucumber_language_server", -- Cucumber
}

local other_stuff = {
  "ltex", -- LaTeX
  "lua_ls",
  "taplo", -- TOML
  "yamlls", -- YAML
  --"pbls", -- Protocol Buffers
  --"glsl_analyzer", -- OpenGL Shading Language
}

local M = {}
for _, v in ipairs(sys_programming) do
  table.insert(M, v)
end
for _, v in ipairs(web_programming) do
  table.insert(M, v)
end
for _, v in ipairs(cloud) do
  table.insert(M, v)
end
for _, v in ipairs(utils) do
  table.insert(M, v)
end
for _, v in ipairs(other_stuff) do
  table.insert(M, v)
end

return M
