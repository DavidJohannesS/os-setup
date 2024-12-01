vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float(nil, { focusable = true })<CR>', {noremap = true, silent = true})
--vim.api.nvim_set_keymap('n', '<space>q', ':Ex<CR>', {noremap = true, silent = true})
-- Map the function to a key combination
function OpenTerminalInSplit()
  local current_file_path = vim.fn.expand('%:p:h') -- Get the directory of the current file
  vim.cmd('vsplit') -- Open a vertical split
  vim.cmd('wincmd l') -- Move to the right split
  vim.cmd('terminal') -- Open terminal
  vim.cmd('lcd ' .. current_file_path) -- Change terminal directory to the current file's directory
  vim.cmd('startinsert') -- Enter insert mode in the terminal
end
vim.api.nvim_set_keymap('n', '<leader>ot', ':lua OpenTerminalInSplit()<CR>', { noremap = true, silent = true })

-- Compile the current Java file
--vim.api.nvim_set_keymap('n', '<leader>jc', ':w<CR>:!javac %<CR>', { noremap = true, silent = true })

-- Function to run the compiled Java class
--function RunJavaClass()
--    local file = vim.fn.expand('%:p')
--    local class_name = file:match('src/main/java/(.+)%.java'):gsub('/', '.')
--    vim.cmd('!java -cp src/main/java ' .. class_name)
--end
--
---- Map the function to a key combination
--vim.api.nvim_set_keymap('n', '<leader>jr', ':lua RunJavaClass()<CR>', { noremap = true, silent = true })
--
-- Function to open Ranger in a vertical split with 25% width
local function open_ranger_in_vsplit()
  -- Save current window id and buffer id
  local current_win = vim.api.nvim_get_current_win()
  local current_buf = vim.api.nvim_get_current_buf()

  -- Open ranger in a vertical split
  vim.cmd('vsplit')
  -- Set the width of the split to 25%
  vim.cmd('vertical resize ' .. math.floor(vim.o.columns * 0.25))

  -- Open ranger
  vim.api.nvim_command('Ranger')

  -- Restore focus to original window and buffer
  vim.api.nvim_set_current_win(current_win)
  vim.api.nvim_set_current_buf(current_buf)
end

-- Map the custom function to a keybinding (e.g., <leader>rv)
vim.api.nvim_set_keymap('n', '<leader>rv', ':lua open_ranger_in_vsplit()<CR>', { noremap = true, silent = true })

