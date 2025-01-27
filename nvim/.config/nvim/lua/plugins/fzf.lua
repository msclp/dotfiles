return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.nvim" },
    keys = {
      { "<leader>gs", function() require("fzf-lua").git_status() end },
      { "<leader>sg", function() require("fzf-lua").live_grep() end },
      { "<leader>sf", function() require("fzf-lua").files() end },
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
    opts = function()
      local actions = require 'fzf-lua.actions'
      return {
        grep = {
          actions = {
            ['ctrl-q'] = {
              fn = actions.file_edit_or_qf,
              prefix = 'select-all+',
            },
          },
        },
      }
    end,
  },
}
