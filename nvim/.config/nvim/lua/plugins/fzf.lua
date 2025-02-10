return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.nvim" },
    keys = {
      { "<leader>gs", function() require("fzf-lua").git_status() end },
      { "<leader>sb", function() require("fzf-lua").buffers() end },
      { "<leader>sf", function() require("fzf-lua").files() end },
      { "<leader>sg", function() require("fzf-lua").live_grep() end },
      { "<leader>sq", function() require("fzf-lua").quickfix() end },
      { "<leader>ev", function()
          require("fzf-lua").files({
            cwd = vim.fn.stdpath('config'),
            -- cwd_prompt = false,
            -- prompt = "❯ ",
            winopts = {
              title = " Neovim config ",
            },
          })
        end } },
    opts = {}
  }
}
