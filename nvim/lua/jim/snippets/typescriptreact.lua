local ls = require("luasnip")

local group = vim.api.nvim_create_augroup("Lua Snippets", { clear = true })
local file_pattern = "*.lua"

local s = ls.s

-- Text Node
-- This is the simplest node.
--  Creates a new text node. Places cursor after node by default.
--  t { "this will be inserted" }
--
--  Multiple lines are by passing a table of strings.
--  t { "line 1", "line 2" }
local t = ls.t

-- Insert Node
--  Creates a location for the cursor to jump to.
--      Possible options to jump to are 1 - N
--      If you use 0, that's the final place to jump to.
--
--  To create placeholder text, pass it as the second argument
--      i(2, "this is placeholder text")
local i = ls.i

-- Function Node
--  Takes a function that returns text
local f = ls.function_node

-- This a choice snippet. You can move through with <c-k>
--   c(1, { t {"hello"}, t {"world"}, }),
--
-- The first argument is the jump position
-- The second argument is a table of possible nodes.
--  Note, one thing that's nice is you don't have to include
--  the jump position for nodes that normally require one (can be nil)
local c = ls.choice_node
local d = ls.dynamic_node
local sn = ls.snippet_node

local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

local events = require "luasnip.util.events"
local snippets, autosnippets = {}, {}

-- Helpers --

local function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

local function splitToParts(str, char)
    return vim.split(str, char, true)
end

-- End Helpers --

-- Snippets --
local useState = s(
    "us",
    fmt("const [{}, {}] = useState({});",
    {
        i(1),
        f(function(getter)
            return "set" .. firstToUpper(getter[1][1])
        end, { 1 }),
        i(0, "null")
    }))

    --Broken nonsense
local functionComponent = s(
    "fc",
    fmt([[export default function {}() {{
    return (
      <div />
    );
}}
    ]],
    {
        f(function(_, snip)
            local parts = splitToParts(snip.env.TM_FILENAME_BASE  or "", "-")
            local partsTable = { }
            for _,v in ipairs(parts) do
                partsTable[#partsTable+1] = firstToUpper(tostring(v))
            end
            return table.concat(partsTable, "")
        end, {})
    })
)

-- End Snippets --

table.insert(snippets, useState)
table.insert(snippets, functionComponent)

return snippets, autosnippets


