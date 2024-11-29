-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/meow/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/meow/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/meow/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/meow/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/meow/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n:\0\1\5\0\5\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0'\4\4\0D\1\3\0\a:t\tname\16fnamemodify\afn\bvim�\a\1\0\6\0 \0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\0033\4\6\0=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\2B\0\2\0016\0\22\0009\0\23\0009\0\24\0'\2\25\0'\3\26\0'\4\27\0005\5\28\0B\0\5\0016\0\22\0009\0\23\0009\0\24\0'\2\25\0'\3\29\0'\4\30\0005\5\31\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCyclePrev<CR>\agT\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCycleNext<CR>\agt\6n\20nvim_set_keymap\bapi\bvim\15highlights\tfill\1\0\2\nguifg\f#908caa\nguibg\f#1f1d2e\19buffer_visible\1\0\2\nguifg\f#908caa\nguibg\f#1f1d2e\15background\1\0\2\nguifg\f#908caa\nguibg\f#1f1d2e\23separator_selected\1\0\2\nguifg\f#1f1d2e\nguibg\f#1f1d2e\20buffer_selected\1\0\5\23separator_selected\0\tfill\0\19buffer_visible\0\20buffer_selected\0\15background\0\1\0\3\nguibg\f#1f1d2e\bgui\tbold\nguifg\f#e0def4\foptions\1\0\2\foptions\0\15highlights\0\19name_formatter\0\foffsets\1\0\4\ttext\17File Manager\rfiletype\rNvimTree\15text_align\vcenter\fpadding\3\1\1\0\n\27always_show_bufferline\1\22show_buffer_icons\2\16color_icons\2\24show_tab_indicators\2\19name_formatter\0\foffsets\0\16diagnostics\rnvim_lsp\20separator_style\nslant\20show_close_icon\1\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0005\3\5\0=\3\6\2B\0\2\1K\0\1\0\tview\1\0\1\nwidth\3(\1\0\2\18hijack_cursor\2\tview\0\14nvim-tree\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["ranger.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\2\0B\0\2\1K\0\1\0\topen\16ranger-nvim\frequire�\1\1\0\a\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0003\6\v\0=\6\f\5B\0\5\1K\0\1\0\rcallback\0\1\0\2\fnoremap\2\rcallback\0\5\15<leader>ex\6n\20nvim_set_keymap\bapi\bvim\1\0\1\18replace_netrw\2\nsetup\16ranger-nvim\frequire\0" },
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/ranger.nvim",
    url = "https://github.com/kelly-lin/ranger.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/meow/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: ranger.nvim
time([[Config for ranger.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\2\0B\0\2\1K\0\1\0\topen\16ranger-nvim\frequire�\1\1\0\a\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0003\6\v\0=\6\f\5B\0\5\1K\0\1\0\rcallback\0\1\0\2\fnoremap\2\rcallback\0\5\15<leader>ex\6n\20nvim_set_keymap\bapi\bvim\1\0\1\18replace_netrw\2\nsetup\16ranger-nvim\frequire\0", "config", "ranger.nvim")
time([[Config for ranger.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0005\3\5\0=\3\6\2B\0\2\1K\0\1\0\tview\1\0\1\nwidth\3(\1\0\2\18hijack_cursor\2\tview\0\14nvim-tree\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n:\0\1\5\0\5\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0'\4\4\0D\1\3\0\a:t\tname\16fnamemodify\afn\bvim�\a\1\0\6\0 \0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\0033\4\6\0=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\2B\0\2\0016\0\22\0009\0\23\0009\0\24\0'\2\25\0'\3\26\0'\4\27\0005\5\28\0B\0\5\0016\0\22\0009\0\23\0009\0\24\0'\2\25\0'\3\29\0'\4\30\0005\5\31\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCyclePrev<CR>\agT\1\0\2\fnoremap\2\vsilent\2\29:BufferLineCycleNext<CR>\agt\6n\20nvim_set_keymap\bapi\bvim\15highlights\tfill\1\0\2\nguifg\f#908caa\nguibg\f#1f1d2e\19buffer_visible\1\0\2\nguifg\f#908caa\nguibg\f#1f1d2e\15background\1\0\2\nguifg\f#908caa\nguibg\f#1f1d2e\23separator_selected\1\0\2\nguifg\f#1f1d2e\nguibg\f#1f1d2e\20buffer_selected\1\0\5\23separator_selected\0\tfill\0\19buffer_visible\0\20buffer_selected\0\15background\0\1\0\3\nguibg\f#1f1d2e\bgui\tbold\nguifg\f#e0def4\foptions\1\0\2\foptions\0\15highlights\0\19name_formatter\0\foffsets\1\0\4\ttext\17File Manager\rfiletype\rNvimTree\15text_align\vcenter\fpadding\3\1\1\0\n\27always_show_bufferline\1\22show_buffer_icons\2\16color_icons\2\24show_tab_indicators\2\19name_formatter\0\foffsets\0\16diagnostics\rnvim_lsp\20separator_style\nslant\20show_close_icon\1\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end