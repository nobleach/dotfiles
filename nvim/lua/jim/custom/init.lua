function log_var()
	local cursor = vim.api.nvim_win_get_cursor(0)
	local search = vim.fn.expand("<cword>")
	local lines = "console.log('" .. search .. ":', " .. search .. ");"

	return vim.api.nvim_buf_set_lines(0, cursor[1], cursor[1], false, { lines })
end

vim.api.nvim_set_keymap("n", "<leader>c", "<cmd>lua log_var()<cr>", { noremap = true, silent = true })
