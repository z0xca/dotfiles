return {
	"RRethy/base16-nvim",
	priority = 1000,
	config = function()
		require("base16-colorscheme").setup({
			base00 = "#121318",
			base01 = "#0d0e13",
			base02 = "#1b1b21",
			base03 = "#46464f",
			base04 = "#c6c5d0",
			base05 = "#e3e1e9",
			base06 = "#303036",
			base07 = "#38393f",

			base08 = "#ffb4ab",
			base09 = "#e5bad8",
			base0A = "#c3c5dd",
			base0B = "#b9c3ff",
			base0C = "#5d3c55",
			base0D = "#384379",
			base0E = "#434659",
			base0F = "#93000a",
		})

		-- We first theme base16, but we also need to fix some other colors that don't
		-- contrast well by default

		-- Helper function to set multiple highlight groups at once
		local function set_hl_mutliple(groups, value)
			for _, v in pairs(groups) do
				vim.api.nvim_set_hl(0, v, value)
			end
		end

		-- Make selected text stand out more
		vim.api.nvim_set_hl(0, "Visual", {
			bg = "#384379",
			fg = "#121318",
		})

		set_hl_mutliple({ "TSComment", "Comment" }, {
			fg = "#ffd7f2",
		})

		set_hl_mutliple({ "TSMethod", "Method" }, {
			fg = "#e5bad8",
		})

		set_hl_mutliple({ "TSFunction", "Function" }, {
			fg = "#c3c5dd",
		})

		vim.api.nvim_set_hl(0, "Keyword", {
			fg = "#505b92",
		})

		vim.api.nvim_set_hl(0, "MsgArea", {
			bg = "#0d0e13",
			fg = "#b9c3ff",
		})

		-- Transparent background
		local set_hl = vim.api.nvim_set_hl
		set_hl(0, "Normal", { bg = "NONE" })
	end,
}
