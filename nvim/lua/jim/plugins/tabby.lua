return {
	"nanozuki/tabby.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local theme = {
			fill = "TabLineFill",
			-- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
			head = "TabLine",
			current_tab = "TabLineSel",
			tab = "TabLine",
			win = "TabLine",
			tail = "TabLine",
		}
		-- local theme = {
		-- 	fill = { bg = "#13161d", fg = "#13161d" },
		-- 	head = { bg = "#272d38", fg = "#dfe1e9" },
		-- 	current_tab = { bg = "#212733", fg = "#dfe1e9" },
		-- 	tab = { bg = "#5c6772", fg = "#13161d" },
		-- 	tail = { bg = "#212733", fg = "#dfe1e9" },
		-- }

		local api = require("tabby.module.api")
		local devicons = require("nvim-web-devicons")

		local function get_hl(tab)
			return tab.is_current() and theme.current_tab or theme.tab
		end

		local function get_opening_sep(tab)
			local current_tab_number = api.get_tab_number(api.get_current_tab())
			if tab.number() > current_tab_number then
				return "◥"
			end
			return "◢"
		end
		local function get_closing_sep(tab)
			local current_tab_number = api.get_tab_number(api.get_current_tab())
			if tab.number() < current_tab_number then
				return "◤"
			end
			return "◣"
		end

		function get_tab_name(tab)
			return string.gsub(tab.name(), "%[..%]", "")
		end

		function get_tab_window_count(tab)
			local count = #tab.wins().wins
			return count > 1 and "[" .. count .. "]" or ""
		end

		local function get_modified(tab)
			local win_ids = api.get_tab_wins(tab.id)
			for _, win_id in ipairs(win_ids) do
				if pcall(vim.api.nvim_win_get_buf, win_id) then
					local bufid = vim.api.nvim_win_get_buf(win_id)
					if vim.api.nvim_buf_get_option(bufid, "modified") then
						return "󰏫"
					end
				end
			end
			return ""
		end

		local function get_current_buffer_icon()
			local current_buffer_filename = vim.fn.expand("%:t")
			local current_buffer_extension = vim.fn.expand("%:e")
			return devicons.get_icon(current_buffer_filename, current_buffer_extension, { default = true })
		end

		require("tabby.tabline").set(function(line)
			return {
				{
					{ "   ", hl = theme.head },
					line.sep("", theme.head, theme.fill),
				},
				line.tabs().foreach(function(tab)
					return {
						line.sep(get_opening_sep(tab), get_hl(tab), theme.fill),
						devicons.get_icon(get_tab_name(tab), nil, { default = true }),
						get_tab_name(tab),
						get_tab_window_count(tab),
						get_modified(tab),
						line.sep(get_closing_sep(tab), get_hl(tab), theme.fill),
						hl = get_hl(tab),
						margin = " ",
					}
				end),
				line.spacer(),
				{
					line.sep("◥", theme.tail, theme.fill),
					{ " ", get_current_buffer_icon(), "  ", hl = theme.tail },
				},
				hl = theme.fill,
			}
		end)
	end,
}
