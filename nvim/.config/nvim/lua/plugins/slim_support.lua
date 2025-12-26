-- set file type on buffer creation and reading
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.slim" },
  command = "set ft=slim",
})

return {
  -- lazy spec
  {
    "slim-template/vim-slim", -- Syntax highlighting for VIM
    ft = "slim",
  }
}
