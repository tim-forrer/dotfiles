local tex_utils = require("ls_tex_utils")
local vars = require("ls_variables")
local M = {}

M.mathmode = tex_utils.in_mathzone
M.get_visual = tex_utils.get_visual
M.fmt = vars.fmt
M.fmta = vars.fmta
M.s = vars.s
M.i = vars.i
M.rep = vars.rep
M.d = vars.d

return M
