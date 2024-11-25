-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })

  -- Git integration
  use 'tpope/vim-fugitive'

  -- Add nvim-llama
  use {
    'jpmcb/nvim-llama',
    config = function()
      require('nvim-llama').setup {
        model = 'codellama',  -- Specify the model you want to use
        debug = false,        -- Enable debugging logs if needed
      }
    end
  }
use {
  'neoclide/coc.nvim',
  branch = 'release',
  run = 'yarn install --frozen-lockfile',
  config = function()
    vim.cmd([[ 
      " Use <Tab> and <S-Tab> to navigate through popup menu
      inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
      inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
 
      " Use K to show documentation in preview window
      nnoremap <silent> K :call CocActionAsync('doHover')<CR>

      " Use <C-l> for triggering completion
      inoremap <silent><expr> <C-l> coc#refresh()
      " Use <CR> to confirm the completion suggestion 
      inoremap <expr> <C-y> pumvisible() ? coc#_select_confirm() : "\<CR>"
    ]])
  end
}

  -- Telescope for fuzzy finding
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Nvim-tree for file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup()
      require('nvim-tree').setup {
        hijack_cursor = true,
        view = {
          width = 40
        }
      }
    end
  }
end)

