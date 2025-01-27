return {
  {
    'stevearc/oil.nvim',
    dependencies = { "echasnovski/mini.nvim" },
    keys = {
      {
        "-",
        "<CMD>Oil<CR>",
        desc = "Open parent directory"
      },
    },
    opts = {},
  }
}
