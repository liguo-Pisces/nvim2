vim.opt.viewoptions:remove "curdir" -- display saving current directory with views
vim.opt.shortmess:append { s = true, I = true } -- Disable startup message
vim.opt.backspace:append { "nostop" } -- Don't stop backspace at insert
vim.opt.diffopt:append "linematch:60" -- Enable linematch diff algorithm
vim.opt.breakindent = true -- Wrap indent to match line start
vim.opt.clipboard = "unnamedplus" -- Connection to the system clipboard
vim.opt.cmdheight = 0 -- Hide command line unless needed
vim.opt.completeopt = { "menuone", "noselect" } -- Options for insert mode completion
vim.opt.copyindent = true -- Copy the previous indentation on autoindenting
vim.opt.cursorline = true -- Highlight the text line of the cursor
vim.opt.expandtab = true -- Enable the use of space in tab
vim.opt.fileencoding = "utf-8" -- File content encoding for the buffer
vim.opt.fillchars = { eob = " " } -- Disable `~` on nonexistent lines
vim.opt.foldenable = true -- Enable fold for nvim-ufo
vim.opt.foldlevel = 99 -- Set high foldlevel for nvim-ufo
vim.opt.foldlevelstart = 99 -- Start with all code unfolded
vim.opt.foldcolumn = "1" -- Show foldcolumn
vim.opt.history = 100 -- Number of commands to remember in a history table
vim.opt.ignorecase = true -- Case insensitive searching
vim.opt.infercase = true -- Infer cases in keyword completion
vim.opt.laststatus = 3 -- Globalstatus
vim.opt.linebreak = true -- Wrap lines at 'breakat'
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.number = true -- Show numberline
vim.opt.preserveindent = true -- Preserve indent structure as much as possible
vim.opt.pumheight = 10 -- Height of the pop up menu
vim.opt.relativenumber = true -- Show relative numberline
vim.opt.scrolloff = 8 -- Number of lines to keep above and below the cursor
vim.opt.shiftwidth = 2 -- Number of space inserted for indentation
vim.opt.showmode = false -- Disable showing modes in command line
vim.opt.showtabline = 2 -- Always show the sign column
vim.opt.sidescrolloff = 8 -- Number of columns to keep at the sides of the cursor
vim.opt.signcolumn = "yes" -- Always show the sign column
vim.opt.smartcase = true -- Case sensitive searching
vim.opt.smartindent = true -- Smarter autoindentation
vim.opt.splitbelow = true -- Splitting a new window below the current one
vim.opt.splitright = true -- Splitting a new window at the right of the current one
vim.opt.tabstop = 2 -- Number of space in a tab
vim.opt.termguicolors = true -- Enable 24-bit RGB color in the TUI
vim.opt.timeoutlen = 500 -- Shorten key timeout length a little bit for which-key
vim.opt.undofile = true -- Enable persistent undo
vim.opt.updatetime = 300 -- Length of time to wait before triggering the plugin
vim.opt.virtualedit = "block" -- Allow going past end of line in visual block mode
vim.opt.wrap = false -- Disable wrapping of lines longer than the width of window
vim.opt.writebackup = false -- Disable making a backup before overwriting a file

vim.g.highlighturl_enabled = true -- Highlight URLs by default
vim.g.mapleader = " " -- Set leader key
vim.g.autoformat_enabled = true -- Enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
vim.g.codelens_enabled = true -- Enable or disable automatic codelens refreshing for lsp that support it
vim.g.lsp_handlers_enabled = true -- Enable or disable default vim.lsp.handlers (hover and signatureHelp)
vim.g.cmp_enabled = true -- Enable completion at start
vim.g.autopairs_enabled = true -- Enable autopairts at start
vim.g.diagnostics_mode = 3 -- Set the visibility of dianostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
vim.g.icons_enabled = true -- Disable icons in the UI (disable if no nerd font is available)
vim.g.ui_notifications_enabled = true -- Disable notifications when toggling UI elements

vim.t.bufs = vim.api.nvim_list_bufs() -- Initialize buffers for the current tab
