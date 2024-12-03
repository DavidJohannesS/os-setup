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
-- Add this line to your `init.lua`
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
--vim.g.netrw_liststyle = 3
--vim.g.netrw_browse_split = 4
--vim.g.netrw_winsize = 20
--
--local netrw_bufnr = nil

local function toggle_netrw_side()
  -- Check if the netrw buffer is already open
  if netrw_bufnr ~= nil and vim.api.nvim_buf_is_valid(netrw_bufnr) then
    -- Close the netrw window
    vim.cmd('bdelete ' .. netrw_bufnr)
    netrw_bufnr = nil
  else
    -- Open netrw in a side window
    vim.cmd('Vexplore')
    vim.cmd('wincmd H')
    vim.cmd('vertical resize 40')
    -- Save the netrw buffer number
    netrw_bufnr = vim.api.nvim_get_current_buf()
  end
end

-- Map the shortcut to <leader>x for toggling netrw in a side window
--vim.keymap.set('n', '<leader>x', toggle_netrw_side, { desc = 'Toggle netrw in a side window' })


