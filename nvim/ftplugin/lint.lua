local biome_config = vim.api.uv.cwd() .. "/biome.json"
local has_biome = vim.api.uv.fs_stat(biome_config) and vim.fn.executable("checkstyle")
if has_biome then
	vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
		buffer = bufnr,
		group = vim.api.nvim_create_augroup("biome-" .. bufnr, { clear = true }),
		callback = function()
			if not vim.bo[bufnr].modified then
				require("lint.linters.biome").config_file = biome_config
				require("lint").try_lint("biome")
			end
		end,
	})
end
