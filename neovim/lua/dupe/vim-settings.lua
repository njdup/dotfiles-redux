vim.cmd("highlight LineNr ctermbg=NONE guibg=NONE")

-- Set diagnostics signs
vim.cmd("sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=")
vim.cmd("sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=")
vim.cmd("sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=")
vim.cmd("sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=")
vim.cmd("set signcolumn=yes")

local hl = vim.api.nvim_set_hl
hl(0, "DiagnosticError", { fg = "#db4b4b", bg = clear })
hl(0, "DiagnosticSignError", { fg = "#db4b4b", bg = clear })
hl(0, "DiagnosticSignHint", { fg = "#10B981", bg = clear })
hl(0, "DiagnosticSignInfo", { fg = "#0db9d7", bg = clear })
hl(0, "DiagnosticSignWarn", { fg= "#e0af68", bg = clear })

-- Set hidden to preserve buffers
vim.cmd("set hidden")

-- Highlight extra whitespace in all buffers but terminal windows
vim.cmd("highlight ExtraWhitespace ctermbg=grey guibg=grey")
vim.cmd("match ExtraWhitespace /\\s\\+$/")
vim.cmd("au BufWinEnter * if &buftype != 'terminal' | match ExtraWhitespace /\\s\\+$/ | endif")
vim.cmd("au InsertEnter * if &buftype != 'terminal' | match ExtraWhitespace /\\s\\+\\%#\\@<!$/ | endif")
vim.cmd("au InsertLeave * if &buftype != 'terminal' | match ExtraWhitespace /\\s\\+$/ | endif")
vim.cmd("au BufWinLeave * call clearmatches()")

vim.cmd("set nocompatible")          -- disable compatibility to old-time vi
vim.cmd("set showmatch")             -- show matching brackets.
vim.cmd("set ignorecase")            -- case insensitive matching
vim.cmd("set hlsearch")              -- highlight search results
vim.cmd("set incsearch")             -- incremental search
vim.cmd("set autoindent")            -- indent a new line the same amount as the line just typed
vim.cmd("set number")                -- add line numbers
vim.cmd("set relativenumber")        -- add relative line numbers
vim.cmd("set wildmode=longest,list") -- get bash-like tab completions
vim.cmd("set cc=88")                 -- set colour columns for good coding style
vim.cmd("filetype plugin indent on") -- allows auto-indenting depending on file type
vim.cmd("set tabstop=4")             -- number of columns occupied by a tab character
vim.cmd("set expandtab")             -- convert tabs to white space
vim.cmd("set shiftwidth=4 smarttab") -- width for autoindents
vim.cmd("set softtabstop=4")         -- see multiple spaces as tabstops so <BS> does the right thing
vim.cmd("set scrolloff=8")           -- keep 8 lines above and below the cursor
vim.cmd("syntax on")

