-- return {
-- 	"navarasu/onedark.nvim",
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		require("onedark").setup({
-- 			style = "deep",
-- 		})
-- 		-- Enable theme
-- 		require("onedark").load()
-- 	end,
-- }
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = true, -- disables setting the background color.
		})

		-- setup must be called before loading
		vim.cmd.colorscheme("catppuccin")
	end,
}
