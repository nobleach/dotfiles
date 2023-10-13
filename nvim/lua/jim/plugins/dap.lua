return {
	"mfussenegger/nvim-dap",
	dependencies = { "rcarriga/nvim-dap-ui", "nvim-telescope/telescope-dap.nvim" },
	opts = {},
	event = "VeryLazy",
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dap.adapters.node2 = {
			type = "executable",
			command = "node",
			args = { os.getenv("HOME") .. "/bin/vscode-node-debug2/out/src/nodeDebug.js" },
		}

		dap.adapters.lldb = {
			type = "executable",
			command = "lldb-vscode", -- adjust as needed, must be absolute path
			name = "lldb",
		}

		dap.adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				-- CHANGE THIS to your path!
				command = "/Users/jimwharton/Downloads/codelldb-x86_64-darwin/extension/adapter/codelldb",
				args = { "--port", "${port}" },

				-- On windows you may have to uncomment this:
				-- detached = false,
			},
		}

		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = true,
			},
		}

		dap.configurations.c = dap.configurations.cpp
		dap.configurations.rust = dap.configurations.cpp

		vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapStopped", { text = "", texthl = "", linehl = "", numhl = "" })

		dapui.setup()

		-- keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>da", "<cmd>lua require('debugHelper').attach()<CR>", { silent = true, noremap = true })
		keymap.set(
			"n",
			"<leader>dh",
			"<cmd>lua require'dap'.toggle_breakpoint()<CR>",
			{ silent = true, noremap = true }
		)
		keymap.set("n", "<leader>di", "<cmd>lua require'dap.ui.widgets'.hover()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dt", "lua require'dap'.step_out()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>do", "lua require'dap'.step_into()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dr", "lua require'dap'.step_over()<CR>", { silent = true, noremap = true })

		keymap.set("n", "<leader>ds", "lua require'dap'.stop()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dn", "lua require'dap'.continue()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dk", "lua require'dap'.up()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dj", "lua require'dap'.down()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>d_", "lua require'dap'.run_last()<CR>", { silent = true, noremap = true })
	end,
}
