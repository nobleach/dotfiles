return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"nvim-telescope/telescope-dap.nvim",
	},
	opts = {},
	event = "VeryLazy",
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local js_filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" }
		local current_file = vim.fn.expand("%:t")

		local vscode = require("dap.ext.vscode")
		local json = require("plenary.json")
		vscode.json_decode = function(str)
			return vim.json.decode(json.json_strip_comments(str))
		end
		dap.adapters["pwa-node"] = {
			id = "pwa-node",
			type = "server",
			host = "127.0.0.1",
			port = 43229,
			executable = {
				command = "node",
				args = {
					"/Users/jim.wharton/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
					"43229",
				},
			},
			options = {
				detached = false,
			},
		}

		vscode.type_to_filetypes["node"] = js_filetypes
		vscode.type_to_filetypes["pwa-node"] = js_filetypes

		for _, language in ipairs(js_filetypes) do
			if not dap.configurations[language] then
				dap.configurations[language] = {
					{
						type = "pwa-node",
						request = "launch",
						name = "Launch file",
						program = function()
							local currentFilePath = vim.fn.expand("%")

							return vim.fn.input("Path to executable: ", currentFilePath, "file")
						end,
						cwd = "${workspaceFolder}",
					},
					{
						name = "Attach to process",
						type = "pwa-node",
						request = "attach",
						port = 9229,
						restart = true,
						cwd = vim.fn.getcwd(),
						sourceMaps = true,
						protocol = "inspector",
					},
					{
						name = "tsx (" .. current_file .. ")",
						type = "node",
						request = "launch",
						program = "${file}",
						runtimeExecutable = "tsx",
						cwd = "${workspaceFolder}",
						console = "integratedTerminal",
						internalConsoleOptions = "neverOpen",
						skipFiles = { "<node_internals>/**", "${workspaceFolder}/node_modules/**" },
					},
				}
			end
		end

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

		-- /.local/share/nvim/mason/bin/js-debug-adapter

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

		-- keymap.set("n", "<leader>da", "<cmd>lua require('debugHelper').attach()<CR>", { silent = true, noremap = true })
		keymap.set(
			"n",
			"<leader>dh",
			"<cmd>lua require'dap'.toggle_breakpoint()<CR>",
			{ silent = true, noremap = true }
		)
		keymap.set("n", "\\s", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dh", "<cmd>lua require'dap.ui.widgets'.hover()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", { silent = true, noremap = true })
		keymap.set("n", ",b", "<cmd>lua require('dapui').toggle()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>do", "lua require'dap'.step_out()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>di", "lua require'dap'.step_into()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dv", "lua require'dap'.step_over()<CR>", { silent = true, noremap = true })

		keymap.set("n", "<leader>ds", "lua require'dap'.stop()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dn", "lua require'dap'.continue()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dk", "lua require'dap'.up()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>dj", "lua require'dap'.down()<CR>", { silent = true, noremap = true })
		keymap.set("n", "<leader>d_", "lua require'dap'.run_last()<CR>", { silent = true, noremap = true })
	end,
}
