return {
	"ionide/Ionide-vim",
	config = function()
		vim.cmd.normal("let g:fsharp#backend = 'nvim'")
	end,
}
