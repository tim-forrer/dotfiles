local settings = {}
settings[1] = require("appearance")
settings[2] = require("keybindings")

local M = {}
for _, elt in pairs(settings) do
  for k, v in pairs(elt) do
    M[k] = v
  end
end
return M
