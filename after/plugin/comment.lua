local status, comment = pcall(require, "Comment")

if (not status) then
  return
end

comment.setup({
  toggler = {
    line = "tc",
    block = "tb",
  },
  opleader = {
    line = 'tc',
    block = '„',
  },
})
