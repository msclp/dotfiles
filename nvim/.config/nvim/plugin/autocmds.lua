local autocmd = vim.api.nvim_create_autocmd
local function augroup(name)
  return vim.api.nvim_create_augroup("msclp_" .. name, { clear = true })
end

autocmd("TextYankPost", {
  group = augroup("highligh_yank"),
  callback = function()
    vim.highlight.on_yank()
  end
})
