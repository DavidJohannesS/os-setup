vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float(nil, { focusable = true })<CR>', {noremap = true, silent = true})
-- Function to open terminal in the directory of the current file
function OpenTerminalInSplit()
  local current_file_path = vim.fn.expand('%:p:h') -- Get the directory of the current file
  vim.cmd('vsplit') -- Open a vertical split
  vim.cmd('wincmd l') -- Move to the right split
  vim.cmd('terminal') -- Open terminal
  vim.cmd('lcd ' .. current_file_path) -- Change terminal directory to the current file's directory
  vim.cmd('startinsert') -- Enter insert mode in the terminal
end

-- Map the function to a key combination
vim.api.nvim_set_keymap('n', '<leader>ot', ':lua OpenTerminalInSplit()<CR>', { noremap = true, silent = true })

-- Compile the current Java file
vim.api.nvim_set_keymap('n', '<leader>jc', ':w<CR>:!javac %<CR>', { noremap = true, silent = true })

-- Function to run the compiled Java class
function RunJavaClass()
    local file = vim.fn.expand('%:p')
    local class_name = file:match('src/main/java/(.+)%.java'):gsub('/', '.')
    vim.cmd('!java -cp src/main/java ' .. class_name)
end

-- Map the function to a key combination
vim.api.nvim_set_keymap('n', '<leader>jr', ':lua RunJavaClass()<CR>', { noremap = true, silent = true })

