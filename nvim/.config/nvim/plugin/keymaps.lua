local map = vim.keymap.set
-- quickly switch between two files
-- map("n", "<bs>", "<c-^>")

map({ "n", "v" }, "<space>", "", { silent = true })

-- map("n", "0", "^")
-- map("n", "<M-0>", "0")

-- -- use enter as colon for faster commands
-- map("n", "<CR>", ":")
-- map("v", "<CR>", ":")
-- map('n', '<M-CR>', '<CR>')
-- map('v', '<M-CR>', '<CR>')

-- create windows
map("n", "<leader>h", "<CMD>leftabove vnew<CR>")
map("n", "<leader>j", "<CMD>rightbelow new<CR>")
map("n", "<leader>l", "<CMD>rightbelow vnew<CR>")
map("n", "<leader>k", "<CMD>leftabove new<CR>")

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })

map("n", "<Esc>", "<CMD>nohlsearch<CR>")
map("n", "<leader>*", ":%s/<c-r><c-w>//g<left><left>")

-- map("n", "[c", "<CMD>cprev<CR>")
-- map("n", "]c", "<CMD>cnext<CR>")

-- Keymap to copy file path relative to cwd
map("n", "<leader>Y", function()
  local filepath = vim.fn.expand("%")
  if filepath == "" then
    print("Brak otwartego pliku")
    return
  end
  vim.fn.setreg("+", filepath)
  print("Ścieżka skopiowana: " .. filepath)
end, { desc = "Skopiuj ścieżkę pliku bez cwd do schowka" })

