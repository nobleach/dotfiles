local session = require("luasnip.session")

local env = session.config.snip_env
local s = env["s"]
local t = env["t"]
local i = env["i"]
local parse = env["parse"]

return {
	s({ trig = "pf", name = "Formatted Print", dscr = "Insert a formatted print statement" }, {
		t('fmt.Printf("%#v\\n", '),
		i(1, "value"),
		t(")"),
	}),
	parse(
		{ trig = "ife", name = "If Err", dscr = "Insert a basic if err not nil statement" },
		[[
  if err != nil {
    return err
  }
  ]]
	),

	parse(
		{ trig = "ifel", name = "If Err Log Fatal", dscr = "Insert a basic if err not nil statement with log.Fatal" },
		[[
  if err != nil {
    log.Fatal(err)
  }
  ]]
	),
	parse(
		{ trig = "ma", name = "Main Package", dscr = "Basic main package structure" },
		[[
  package main

  import "fmt"

  func main() {
    fmt.Printf("%+v\n", "...")
  }
  ]]
	),
}
