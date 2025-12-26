require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>")
map("i", "²", "<ESC>")

-- LSP
map("n", "<leader>gd", vim.lsp.buf.definition, { desc="definition" })
map("n", "<leader>gr", vim.lsp.buf.references, {desc="references"})
map("n", "<leader>gf", vim.lsp.buf.format, {desc="format"})
map("n", "<leader>ga", vim.lsp.buf.code_action, {desc="code action"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
