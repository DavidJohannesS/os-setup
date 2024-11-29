vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use {
        'mfussenegger/nvim-jdtls',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
        }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

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
    use {
        "kelly-lin/ranger.nvim",
        config = function()
            require("ranger-nvim").setup({
                replace_netrw = true
            })
            vim.api.nvim_set_keymap("n", "<leader>ex", "", {
                noremap = true,
                callback = function()
                    require("ranger-nvim").open(true)
                end,
            })
        end
    }
    use {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('bufferline').setup {
                options = {
                    show_buffer_close_icons = true,
                    show_close_icon = true,
                    separator_style = 'slant',
                    diagnostics = "nvim_lsp",
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "File Manager",
                            text_align = "center",
                            padding = 1
                        }
                    },
                    show_tab_indicators = true,
                    color_icons = true,
                    show_buffer_icons = true,
                    always_show_bufferline = false,
                    name_formatter = function(buf)
                        return vim.fn.fnamemodify(buf.name, ':t')
                    end,
                },
                highlights = {
                    buffer_selected = {
                        guifg = "#e0def4", -- Light text for selected buffer
                        guibg = "#1f1d2e", -- Rose Pine background color
                        gui = "bold"
                    },
                    separator_selected = {
                        guifg = "#1f1d2e", -- Match the background to blend the separator
                        guibg = "#1f1d2e", -- Match the background to blend the separator
                    },
                    background = {
                        guifg = "#908caa", -- Dimmer text for unselected buffers
                        guibg = "#1f1d2e", -- Rose Pine background color
                    },
                    buffer_visible = {
                        guifg = "#908caa", -- Dimmer text for visible but not selected buffers
                        guibg = "#1f1d2e", -- Rose Pine background color
                    },
                    fill = {
                        guifg = "#908caa", -- Color for the empty space in the buffer line
                        guibg = "#1f1d2e", -- Rose Pine background color
                    },
                },
            }

            -- Set key mappings
            vim.api.nvim_set_keymap('n', 'gt', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', 'gT', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
        end
    }




end)
