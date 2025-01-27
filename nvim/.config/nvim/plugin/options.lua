local opt = vim.opt

opt.shiftwidth = 4
vim.schedule(function()
	opt.clipboard = 'unnamedplus'
end)
opt.number = true
opt.relativenumber = true
opt.mouse = ""

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true
opt.splitright = true
opt.splitbelow = true
-- opt.list = true
-- opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

opt.showmode = false

-- Show which line your cursor is on
opt.cursorline = true

opt.undofile = true

opt.scrolloff = 10

opt.signcolumn = 'yes'

opt.laststatus = 3

opt.virtualedit = "block"
