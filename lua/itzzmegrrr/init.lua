require("itzzmegrrr.remap")
require("itzzmegrrr.packer")
require("itzzmegrrr.set")

vim.cmd([[
  autocmd BufReadPost * if getline(1) =~ '^#!/.*bash' | setfiletype bash | endif
]])

-- Automatically run black and isort on save
vim.cmd([[
  augroup auto_format
    autocmd!
    autocmd BufWritePost *.py :silent! !black %
    autocmd BufWritePost *.py :silent! !isort %
    autocmd BufWritePost *.rs :silent! !rustfmt %
    autocmd BufWritePost *.js,*.ts,*.html,*.json,*.jsx,*.tsx,*.css,*.md,*.yaml :silent! !prettier --write %
  augroup END
]])
