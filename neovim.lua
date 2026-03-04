return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#171717",
				bg_dark = "#171717",
				bg_highlight = "#ffd59a",

				-- Foreground colors
				-- fg: Object properties, builtin types, builtin variables, member access, default text
				fg = "#ACABA9",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#4D4D4D",
				-- comment: Line highlight, gutter elements, disabled states
				comment = "#53533f",

				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#aeab94",
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#fdfd96",
				-- yellow: Types, classes, constructors, warnings, numbers, booleans
				yellow = "#a9ba9d",
				-- green: Comments, strings, success states, git additions
				green = "#828282",
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#F56E0F",
				-- blue: Functions, keywords, directories, links, info diagnostics
				blue = "#88A57D",
				-- purple: Storage keywords, special keywords, identifiers, namespaces
				purple = "#f6eabe",
				-- magenta: Function declarations, exception handling, tags
				magenta = "#F56E0F",
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
