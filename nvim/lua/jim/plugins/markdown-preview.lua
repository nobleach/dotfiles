return {
	"selimacerbas/markdown-preview.nvim",
	dependencies = { "selimacerbas/live-server.nvim" },
	config = function()
		require("markdown_preview").setup({
			-- all optional; sane defaults shown
			port = 8421,
			open_browser = true,
			debounce_ms = 300,
		})
		vim.keymap.set("n", "<leader>mps", "<cmd>MarkdownPreview<cr>", { desc = "Markdown: Start preview" })
		vim.keymap.set("n", "<leader>mpS", "<cmd>MarkdownPreviewStop<cr>", { desc = "Markdown: Stop preview" })
		vim.keymap.set("n", "<leader>mpr", "<cmd>MarkdownPreviewRefresh<cr>", { desc = "Markdown: Refresh preview" })
	end,
}
