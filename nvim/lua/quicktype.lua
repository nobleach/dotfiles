return {
	"midoBB/nvim-quicktype",
	cmd = "QuickType",
	ft = { "typescript", "python", "java", "go", "rust", "cs", "swift", "elixir", "kotlin", "typescriptreact" },
	config = function()
		require("nvim-quicktype").setup({
			global = {
				-- Quicktype global options
				cmd = "quicktype", -- Path to the quicktype executable
				src_lang = "json", -- The language of the input
				no_combine_classes = false, -- Do not combine classes with shared properties into a single base class
				all_properties_optional = false, -- Make all properties optional
				alphabetize_properties = false, -- Alphabetize properties
				telemetry = "disable", -- Send telemetry data to Quicktype (can be "enable", or "disable")
				output_file = nil, -- Output file (if not specified, output is printed to stdout)
				debug_dir = nil, -- Directory to write debug info to (if not specified, no debug info is written)
				clipboard_source_register = nil, -- Register from which to read the copied JSON (if not specified, if will default to system then to unnamed and lastly to 0 register)
			},
			filetypes = {
				-- Quicktype language-specific options
				typescript = {
					lang = "typescript", -- The language to generate types for
					additional_options = {
						-- Add any additional options here
						-- Example:
						-- ["just-types"] = true,
						-- ["prefer-unions"] = true,
					},
				},
				python = {
					lang = "python", -- The language to generate types for
					additional_options = {},
				},
				-- Add more filetypes as needed
			},
		})
	end,
}
