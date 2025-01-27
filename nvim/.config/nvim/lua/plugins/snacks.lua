vim.g.snacks_animate = false

return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      indent = { enabled = true },
      statuscolumn = { enabled = true },
    },
  }
}
