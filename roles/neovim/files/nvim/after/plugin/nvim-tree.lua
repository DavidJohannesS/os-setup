-- nvim-tree setup
require'nvim-tree'.setup {
  -- Automatically update the root directory of the tree on `DirChanged` and `VimEnter`
  update_cwd = true,

  -- View settings
  view = {
    -- Width of the window
    width = 42,
  },
  -- Mappings for the tree
  actions = {
    open_file = {
      window_picker = {
        enable = true,
      },
    },
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
}
-- Function to change the top directory
function ChangeTopDir(dir)
  require'nvim-tree'.change_dir(dir)
end
-- Custom key mappings for nvim-tree
vim.api.nvim_set_keymap('n', '<leader>v', ':lua require"nvim-tree.api".node.open.vertical()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Function to prompt user for directory and change top directory
function PromptAndChangeTopDir()
  local dir = vim.fn.input("Enter directory: ")
  require'nvim-tree'.change_dir(dir)
end

-- Key binding to prompt user for directory
vim.api.nvim_set_keymap('n', '<leader>cd', ':lua PromptAndChangeTopDir()<CR>', { noremap = true, silent = true })

