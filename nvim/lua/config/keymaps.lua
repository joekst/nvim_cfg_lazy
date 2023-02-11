local options = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Leader key ","
keymap("", ",", "<NOP>", options)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Change buffers with TAB
keymap("n", "<TAB>", ":bn<cr>", options)
keymap("n", "<S-TAB>", ":bp<cr>", options)

-- Navigate in quickfix window.
keymap('n', '<C-up>', ':cprev<CR>', options)
keymap('n', '<C-down>', ':cnext<CR>', options)

-- Open and close the quickfix window.
keymap('n', '<C-q><C-q>', ':cclose<CR>', options)
keymap('n', '<C-q>', ':copen<CR>', options)

-- Paste over currently selected text without yanking it
keymap('v', 'p', '"_dP', options)

-- Stay in indent mode
keymap("v", "<", "<gv", options)
keymap("v", ">", ">gv", options)

-- Keep search results centered
keymap('n', 'n', 'nzzzv', options)
keymap('n', 'N', 'Nzzzv', options)

-- Move current line up or down
keymap('n', '<M-Down>', '<Esc>:m .+1<CR>==', options)
keymap('i', '<M-j>', '<Esc>:m .+1<CR>==gi', options)
keymap('n', '<M-Up>', '<Esc>:m .-2<CR>==', options)
keymap('i', '<M-k>', '<Esc>:m .-2<CR>==gi', options)
keymap('v', '<M-j>', '<Esc>:m .>+1<CR>gv=gv', options)
keymap('v', '<M-k>', '<Esc>:m .<-2<CR>gv=gv', options)


--keymap('n', '<leader>e', ':Neotree toggle<cr>', options)
