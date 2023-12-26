return {
	"vuki656/package-info.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	config = function()
		local package_info = require("package-info")

		package_info.setup({
			package_manager = "npm",
		})

		local keymap = vim.keymap

		keymap.set({ "n" }, "<leader>ps", package_info.show, { silent = true, noremap = true })
		keymap.set({ "n" }, "<leader>pu", package_info.update, { silent = true, noremap = true })
		keymap.set({ "n" }, "<leader>pi", package_info.install, { silent = true, noremap = true })
		keymap.set({ "n" }, "<leader>pd", package_info.delete, { silent = true, noremap = true })
		keymap.set({ "n" }, "<leader>pp", package_info.change_version, { silent = true, noremap = true })
	end,
}
