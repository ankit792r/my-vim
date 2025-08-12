vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set tabstop=2")
vim.cmd("set scrolloff=8")
vim.cmd("set smarttab")
vim.cmd("set expandtab")
vim.cmd("set nowrap")
vim.cmd("set hlsearch")
vim.cmd("set incsearch")
vim.cmd("set showcmd")
vim.cmd("set showmatch")
vim.cmd("set history=100")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")


vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set("v", "UPKEY", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "DOWNKEY", ":m '>+1<CR>gv=gv")

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
