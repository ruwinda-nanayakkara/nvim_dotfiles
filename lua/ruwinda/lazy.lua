local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    --{"RRethy/nvim-base16", name="base16-atelier-dune"},
    --{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = true, priority = 1000 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate"
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
        }
    },
 -- Bufferline 
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

-- Lualine (THE NEW EXTENSION ADDED IN CONFIGURATION)
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
-- Hop (Better Navigation)
    {
        "phaazon/hop.nvim",
        lazy = true,
    },
-- Language Support
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    },

    {
        "jiaoshijie/undotree",
        dependencies  = {
            "nvim-lua/plenary.nvim",
        },
    },
})
