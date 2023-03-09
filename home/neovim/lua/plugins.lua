local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
    use("wbthomason/packer.nvim")
    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")
    use {
	    'nvim-treesitter/nvim-treesitter',
	    run = function()
		    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		    ts_update()
	    end,
    }
    use('folke/tokyonight.nvim')
    use('nvim-lualine/lualine.nvim')
    use('github/copilot.vim')
    if packer_bootstrap then
        require("packer").sync()
    end
end)
