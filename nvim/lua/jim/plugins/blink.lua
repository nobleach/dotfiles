return {
	"saghen/blink.cmp",
	dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },

	-- use a release tag to download pre-built binaries
	version = "*",
	-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
	-- build = 'cargo build --release',
	-- If you use nix, you can build from source using latest nightly rust with:
	-- build = 'nix run .#build-plugin',

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		-- 'default' for mappings similar to built-in completion
		-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
		-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
		-- See the full "keymap" documentation for information on defining your own keymap.
		keymap = { preset = "enter" },

		appearance = {
			-- Sets the fallback highlight groups to nvim-cmp's highlight groups
			-- Useful for when your theme doesn't support blink.cmp
			-- Will be removed in a future release
			use_nvim_cmp_as_default = true,
			-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- Adjusts spacing to ensure icons are aligned
			nerd_font_variant = "mono",
		},
		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			-- Disable cmdline completions
			cmdline = {},
			default = { "lsp", "path", "snippets", "buffer", "dadbod" },

			-- Add custom providers
			providers = {
				dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
			},
		},

		completion = {
			accept = {
				create_undo_point = true,
				auto_brackets = {
					enabled = true,
					semantic_token_resolution = {
						enabled = true,
					},
				},
			},
			menu = {
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind" },
					},
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 100,
			},
			list = {
				selection = function(ctx)
					return ctx.mode == "cmdline" and "auto_insert" or "preselect"
				end,
			},
		},

		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}
