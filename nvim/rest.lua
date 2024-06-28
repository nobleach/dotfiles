return {
  "rest-nvim/rest.nvim",
  ft = "http",
  dependencies = { "luarocks.nvim" },
  config = function()
    local rest = require("rest-nvim")

		rest.setup()

		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>rr", "<cmd>Rest run<cr>")
		keymap.set("n", "<leader>rl", "<cmd>Rest run last<cr>")
  end,
}

-- return {
--   "diepm/vim-rest-console",
--   config = function()
--     vim.cmd("let g:vrc_trigger = '<leader>rr'")
--   end
-- }
