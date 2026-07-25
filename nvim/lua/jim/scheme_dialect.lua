-- Shared Scheme dialect detection for Conjure + LSP.
-- Dialects never share a project for this workflow; default is Chez.

local M = {}

M.dialects = {
	chez = {
		command = "petite",
		prompt_pattern = "> $",
	},
	guile = {
		command = "guile -q",
		-- scheme@(guile-user)> / scheme@(some-module)>
		prompt_pattern = "scheme@[^>]*> ",
	},
}
M.dialects.petite = M.dialects.chez

-- Project markers searched upward from the buffer file (first hit wins).
local dialect_markers = {
	{ dialect = "chez", markers = { "Akku.manifest" } },
	-- Optional explicit pin (one-line file: "chez" or "guile")
	{ dialect = "from-file", markers = { ".scheme-dialect" } },
	{ dialect = "guile", markers = { "guix.scm", "hall.scm" } },
}

function M.normalize(name)
	if name == "petite" then
		return "chez"
	end
	return name
end

function M.current()
	return vim.g.conjure_scheme_dialect or "chez"
end

function M.is_scheme_buffer(bufnr)
	local fname = vim.api.nvim_buf_get_name(bufnr or 0)
	if fname == "" or fname:match("conjure%-log%-") then
		return false
	end
	return true
end

---Detect dialect from project markers, or nil if none found.
function M.detect(bufnr)
	local fname = vim.api.nvim_buf_get_name(bufnr or 0)
	if fname == "" then
		return nil
	end
	local dir = vim.fs.dirname(fname)

	for _, entry in ipairs(dialect_markers) do
		local found = vim.fs.find(entry.markers, {
			upward = true,
			path = dir,
			type = "file",
			limit = 1,
		})[1]
		if found then
			if entry.dialect == "from-file" then
				local line = vim.fn.readfile(found, "", 1)[1] or ""
				line = line:match("^%s*(%S+)") or ""
				if M.dialects[line] then
					return M.normalize(line)
				end
			else
				return entry.dialect
			end
		end
	end
	return nil
end

---Dialect for this buffer: project markers, else session/global current.
function M.for_buf(bufnr)
	return M.detect(bufnr) or M.current()
end

function M.apply(name)
	name = M.normalize(name)
	local d = M.dialects[name]
	if not d then
		return nil
	end
	vim.g["conjure#client#scheme#stdio#command"] = d.command
	vim.g["conjure#client#scheme#stdio#prompt_pattern"] = d.prompt_pattern
	vim.g.conjure_scheme_dialect = name
	return d
end

return M
