-- https://github.com/shellRaining/hlchunk.nvim
return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          style = {
            { fg = "#806d9c" },
            { fg = "#c21f30" },
          },
          chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = ">",
          },
          max_file_size = 1024 * 1024,
          error_sign = true,
        },
        indent = {
          enable = false, -- Disable if not needed
        },
        line_num = {
          enable = false, -- Disable if not needed
        },
      })
    end,
  },
}
