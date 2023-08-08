require("itzzmegrrr.remap")
require("itzzmegrrr.packer")
require("itzzmegrrr.set")

vim.cmd([[
  autocmd BufReadPost * if getline(1) =~ '^#!/.*bash' | setfiletype bash | endif
]])
