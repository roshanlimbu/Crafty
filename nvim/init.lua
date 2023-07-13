require('roshan.base')
require('roshan.highlights')
require('roshan.maps')
require('roshan.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('roshan.macos')
end
if is_win == 1 then
  require('roshan.windows')
end
if is_wsl == 1 then
  require('roshan.wsl')
end
