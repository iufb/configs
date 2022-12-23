require('iufb.base')
require('iufb.highlights')
require('iufb.maps')
require('iufb.plugins')
local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_linux = has "linux"
require("sessions").setup({
  events = { "WinEnter" },
  session_filepath = ".nvim/sessions",
})
if is_linux then
  require('iufb.linux')
end
if is_mac then
  require('iufb.macos')
end
if is_win then
  require('iufb.windows')
end
