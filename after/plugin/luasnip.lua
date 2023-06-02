local status, luasnip = pcall(require, "luasnip")

if (not status) then
  return
end

luasnip.filetype_extend("ruby", {"rails"})
luasnip.filetype_extend("ejs", { "ejs" })
