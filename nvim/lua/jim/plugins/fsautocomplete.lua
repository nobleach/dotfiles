return {
	{
		"ionide/Ionide-vim",
		ft = { "fsharp" },
		config = function()
			-- Optional: Configure F# Interactive (FSI) keymaps
			-- Default: <M-cr> sends line/selection to FSI, <M-@> toggles FSI window
			vim.g["fsharp#fsi_keymap"] = "vscode"
		end,
	},
}
