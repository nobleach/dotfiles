---@module "lazy"
---@type LazySpec
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	-- Optional: keep this to allow manual :TSUpdate for updating installed parsers
	build = ":TSUpdate",
	config = function()
		-- Your custom filetype registrations
		vim.filetype.add({
			extension = {
				csproj = "xml",
				esproj = "xml",
				keymap = "c",
				mdx = "markdown",
				uproject = "json",
				wsdl = "xml",
			},
		})

		local ts = require("nvim-treesitter")

		-- Collect all supported filetypes from the installed/available parsers
		local ft_set = {}
		for _, lang in ipairs(ts.get_available()) do
			local filetypes = vim.treesitter.language.get_filetypes(lang)
			for _, ft in ipairs(filetypes) do
				ft_set[ft] = true
			end
		end
		local supported_filetypes = vim.tbl_keys(ft_set)

		-- Auto-enable Treesitter features on matching FileType
		vim.api.nvim_create_autocmd("FileType", {
			pattern = supported_filetypes,
			callback = function(args)
				local ft = vim.bo[args.buf].filetype
				local lang = vim.treesitter.language.get_lang(ft)
				if lang and vim.tbl_contains(ts.get_available(), lang) then
					ts.install(lang) -- async install if missing
				end
				-- Enable highlighting
				vim.treesitter.start()

				-- Enable folds (if desired; can remove if not wanted)
				vim.wo.foldmethod = "expr"
				vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"

				-- Enable indentation (experimental; can remove if not wanted)
				vim.bo[args.buf].indentexpr = 'v:lua.require"nvim-treesitter".indentexpr()'
			end,
		})
	end,
}
