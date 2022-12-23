require('craftzdog.base')
require('craftzdog.highlights')
require('craftzdog.maps')
require('craftzdog.plugins')
local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_linux = has "linux"
require("sessions").setup({
  events = { "WinEnter" },
  session_filepath = ".nvim/sessions",
})
if is_linux then
  require('craftzdog.linux')
end
if is_mac then
  require('craftzdog.macos')
end
if is_win then
  require('craftzdog.windows')
end
