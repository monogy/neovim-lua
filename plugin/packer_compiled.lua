-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/monogy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/monogy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/monogy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/monogy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/monogy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://mirror.ghproxy.com/https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\na\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://mirror.ghproxy.com/https://github.com/goolord/alpha-nvim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://mirror.ghproxy.com/https://github.com/jiangmiao/auto-pairs"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16conf.barbar\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://mirror.ghproxy.com/https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://mirror.ghproxy.com/https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://mirror.ghproxy.com/https://github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://mirror.ghproxy.com/https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://mirror.ghproxy.com/https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://mirror.ghproxy.com/https://github.com/f3fora/cmp-spell"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://mirror.ghproxy.com/https://github.com/hrsh7th/cmp-vsnip"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://mirror.ghproxy.com/https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["distant.nvim"] = {
    config = { "\27LJ\2\nt\0\0\6\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3B\3\1\2=\3\6\2B\0\2\1K\0\1\0\6*\1\0\0\17chip_default\21distant.settings\nsetup\fdistant\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/distant.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/chipsenkbeil/distant.nvim"
  },
  ["doom-one.nvim"] = {
    config = { "\27LJ\2\n…\3\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\25plugins_integrations\1\0\14\21indent_blankline\2\rwhichkey\2\rstartify\2\14dashboard\2\14nvim_tree\2\vneogit\2\14telescope\1\rgitsigns\2\14gitgutter\1\15bufferline\1\vbarbar\2\nneorg\2\flspsaga\1\19vim_illuminate\2\rpumblend\1\0\2\venable\2\24transparency_amount\3\20\1\0\5\27transparent_background\1\22enable_treesitter\2\20italic_comments\1\20terminal_colors\1\20cursor_coloring\1\nsetup\rdoom-one\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/doom-one.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/NTBBloodbath/doom-one.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/stevearc/dressing.nvim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/far.vim",
    url = "https://mirror.ghproxy.com/https://github.com/brooth/far.vim"
  },
  fd = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/fd",
    url = "https://mirror.ghproxy.com/https://github.com/sharkdp/fd"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://mirror.ghproxy.com/https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://mirror.ghproxy.com/https://github.com/junegunn/fzf"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30galaxyline.themes.eviline\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/NTBBloodbath/galaxyline.nvim"
  },
  ["icon-picker.nvim"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16icon-picker\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/icon-picker.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/ziontee113/icon-picker.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://mirror.ghproxy.com/https://github.com/Yggdroot/indentLine"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://mirror.ghproxy.com/https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22conf.lspsaga-conf\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/tami5/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mathjax-support-for-mkdp"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/mathjax-support-for-mkdp",
    url = "https://mirror.ghproxy.com/https://github.com/iamcco/mathjax-support-for-mkdp"
  },
  ["md-img-paste.vim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/md-img-paste.vim",
    url = "https://mirror.ghproxy.com/https://github.com/ferrine/md-img-paste.vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://mirror.ghproxy.com/https://github.com/scrooloose/nerdcommenter"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://mirror.ghproxy.com/https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cursorword"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/nvim-cursorword",
    url = "https://mirror.ghproxy.com/https://github.com/xiyaowong/nvim-cursorword"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n<\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0!conf.nvim-lsp-installer-conf\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://mirror.ghproxy.com/https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://mirror.ghproxy.com/https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://mirror.ghproxy.com/https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://mirror.ghproxy.com/https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/nvim-lua/plenary.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://mirror.ghproxy.com/https://github.com/luochen1990/rainbow"
  },
  ["ranger.vim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/ranger.vim",
    url = "https://mirror.ghproxy.com/https://github.com/francoiscabrol/ranger.vim"
  },
  ripgrep = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://mirror.ghproxy.com/https://github.com/BurntSushi/ripgrep"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/switch.vim",
    url = "https://mirror.ghproxy.com/https://github.com/AndrewRadev/switch.vim"
  },
  tabular = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://mirror.ghproxy.com/https://github.com/godlygeek/tabular"
  },
  ["telescope-emoji"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/telescope-emoji",
    url = "https://mirror.ghproxy.com/https://github.com/xiyaowong/telescope-emoji"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://mirror.ghproxy.com/https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/vim-autoformat",
    url = "https://mirror.ghproxy.com/https://github.com/Chiel92/vim-autoformat"
  },
  ["vim-colorschemes"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/vim-colorschemes",
    url = "https://mirror.ghproxy.com/https://github.com/flazz/vim-colorschemes"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://mirror.ghproxy.com/https://github.com/tamlok/vim-markdown"
  },
  ["vim-peekaboo"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/vim-peekaboo",
    url = "https://mirror.ghproxy.com/https://github.com/junegunn/vim-peekaboo"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/vim-signature",
    url = "https://mirror.ghproxy.com/https://github.com/kshenoy/vim-signature"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://mirror.ghproxy.com/https://github.com/honza/vim-snippets"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://mirror.ghproxy.com/https://github.com/mg979/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://mirror.ghproxy.com/https://github.com/hrsh7th/vim-vsnip"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/monogy/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://mirror.ghproxy.com/https://github.com/liuchengxu/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: icon-picker.nvim
time([[Config for icon-picker.nvim]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16icon-picker\frequire\0", "config", "icon-picker.nvim")
time([[Config for icon-picker.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16conf.barbar\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\na\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30galaxyline.themes.eviline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22conf.lspsaga-conf\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: distant.nvim
time([[Config for distant.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\6\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3B\3\1\2=\3\6\2B\0\2\1K\0\1\0\6*\1\0\0\17chip_default\21distant.settings\nsetup\fdistant\frequire\0", "config", "distant.nvim")
time([[Config for distant.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0!conf.nvim-lsp-installer-conf\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: doom-one.nvim
time([[Config for doom-one.nvim]], true)
try_loadstring("\27LJ\2\n…\3\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\25plugins_integrations\1\0\14\21indent_blankline\2\rwhichkey\2\rstartify\2\14dashboard\2\14nvim_tree\2\vneogit\2\14telescope\1\rgitsigns\2\14gitgutter\1\15bufferline\1\vbarbar\2\nneorg\2\flspsaga\1\19vim_illuminate\2\rpumblend\1\0\2\venable\2\24transparency_amount\3\20\1\0\5\27transparent_background\1\22enable_treesitter\2\20italic_comments\1\20terminal_colors\1\20cursor_coloring\1\nsetup\rdoom-one\frequire\0", "config", "doom-one.nvim")
time([[Config for doom-one.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
