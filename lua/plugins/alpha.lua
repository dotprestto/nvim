return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
    priority = 1000,
    lazy = false,
    config = function()
		require("alpha").setup(require("alpha.themes.dashboard").config)
	end,
}
