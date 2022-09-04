local keymap = vim.keymap

-- Compile c++
keymap.set('i', 'jk', '<ESC>')
keymap.set('n', '<leader>cm', ':!cmake --build ./build/ && ./build/Main<CR>', {desc = 'Compile and run via CMake (Debug)'})
keymap.set('n', '<leader>cmr', ':!cmake --build ./Release/ && ./Release/Main<CR>', {desc = 'Compile and run via CMake (Release)'})
keymap.set('n', '<leader>cmr', ':!cmake --build ./build/ && ./build/Main', {desc = 'Enter text to Compile and run via CMake (Debug)'})
keymap.set('n', '<leader>cr', ':!cmake --build ./build/ && ./build/tests/tests<CR>', {desc = 'Compile and run tests'})

-- Select all
keymap.set('n', '<C-a>', "ggVG", {desc="Select all"})

-- Save file
keymap.set('n', '<C-s>', ":write<CR>", {desc="Save file"})
keymap.set('i', '<C-s>', "<ESC>:write<CR>i", {desc="Save file"})

-- Go up and down in vim autocompletions using i and o


-- Toggle transparent background
keymap.set('n', '<Leader>tt', ':TransparentToggle<CR>', {desc="Toggle tranparent background"})

-- Switch buffers by pressing Tab
keymap.set('n', '<Tab>', ':bnext<CR>')
keymap.set('n', '<S-Tab>', ':bprevious<CR>')
