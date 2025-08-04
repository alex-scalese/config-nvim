local opt = vim.opt

-- font
-- opt.guifont=""

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false
opt.breakindent = true

-- backspace allowed on indent, end of line or on insert mode start position
opt.backspace = "indent,eol,start"

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- clipboard
opt.clipboard = "unnamedplus"

-- misc
opt.undofile = true
opt.splitbelow = true
opt.splitright = true
opt.completeopt = "menuone,noselect"
opt.scrolloff = 4 
opt.sidescrolloff = 8
