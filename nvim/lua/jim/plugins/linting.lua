return {
	"mfussenegger/nvim-lint",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "biomejs" },
			-- typescript = { "biomejs", "eslint" },
			typescript = { "biomejs" },
			javascriptreact = { "biomejs" },
			-- typescriptreact = { "biomejs", "eslint" },
			typescriptreact = { "biomejs" },
			svelte = { "eslint" },
			python = { "pylint" },
		}

		-- local eslint = lint.linters.eslint_d
		--
		-- eslint.args = {
		-- 	-- "--no-warn-ignored", -- <-- this is the key argument
		-- 	"--format",
		-- 	"json",
		-- 	"--stdin",
		-- 	"--stdin-filename",
		-- 	function()
		-- 		return vim.api.nvim_buf_get_name(0)
		-- 	end,
		-- }

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>el", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
