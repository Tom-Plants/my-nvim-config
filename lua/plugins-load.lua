-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive' --依赖于vim-airline
    use 'neovim/nvim-lspconfig'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use({"petertriho/cmp-git", requires = "nvim-lua/plenary.nvim"})
    use 'lewis6991/gitsigns.nvim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    --theme
    use 'tanvirtin/monokai.nvim'
    --nerdtree
    use 'preservim/nerdtree'
    use 'Xuyuanp/nerdtree-git-plugin'

end)

