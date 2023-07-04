-- eys.normal_mod Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.colorscheme = 'everforest'
lvim.transparent_window = true
--------- Keymap ----------

local nmap = lvim.keys.normal_mode

-- 保存
nmap["<C-s>"] = ":w<CR>"
-- 分屏
nmap["<leader>v"] = ":vsp<CR>"
nmap["<leader>x"] = ":sp<CR>"
nmap["<A-w>"] = "<C-w>c"
nmap["<A-o>"] = "<C-w>o"
nmap["<A-h>"] = "<C-w>h"
nmap["<A-j>"] = "<C-w>j"
nmap["<A-k>"] = "<C-w>k"
nmap["<A-l>"] = "<C-w>l"
-- 上下滚动浏览
nmap["<C-j>"] = "4j"
nmap["<C-k>"] = "4k"
--bufferline
nmap["<C-h>"] = ":BufferLineCyclePrev<CR>"
nmap["<C-l>"] = ":BufferLineCycleNext<CR>"
nmap["<C-w>"] = ":BufferKill<CR>"

--------- End ----------

--------- Plugins ----------

lvim.plugins = {
  { "h-hg/fcitx.nvim" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/everforest" },
  { "HiPhish/nvim-ts-rainbow2" },
  { "folke/tokyonight.nvim" },
  { "lervag/vimtex",
    config = function ()
      vim.g.tex_flavor='latex'
      vim.g.vimtex_view_method='zathura'
      vim.g.vimtex_quickfix_mode=0 vim.g.tex_conceal='abdmg'
      vim.g.vimtex_compiler_latexmk_engines = {
        ['_'] = '-xelatex',
      }
      vim.cmd('set conceallevel=1')
    end
  },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function ()
      require("leap").add_default_mappings()
    end,
  },
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
  },
  { "NvChad/nvim-colorizer.lua",
    config = function ()
      require('colorizer').setup()
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
}

--------- End ----------

