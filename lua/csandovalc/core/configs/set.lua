vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Netrw settings
vim.g.netrw_altv = 1
vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
vim.g.netrm_winsize = 30
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 0
vim.g.netrw_localrmdir = "rm -r"
vim.g.netrw_localmkdir = "mkdir -p"
vim.g.netrw_localcopydircmd = "cp -r"
vim.g.netrw_list_hide = "\\(^\\|\\s\\s\\)\\zs\\.\\S\\+"
vim.g.netrw_bufsettings = "noma nomod nu nobl nowrap ro"
