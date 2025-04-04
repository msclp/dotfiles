return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      on_attach = function (buffer)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal({']c', bang = true})
          else
            gitsigns.nav_hunk('next')
          end
        end, "Next Hunk")

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal({'[c', bang = true})
          else
            gitsigns.nav_hunk('prev')
          end
        end, "Prev Hunk")

        map('n', '<leader>ghb', function()
          gitsigns.blame_line({ full = true, extra_opts = '-C -C -C' })
        end, "Blame Line")

        map('n', '<leader>ghB', function()
          gitsigns.blame()
        end, "Blame Buffer")
      end
    }
  }
}
