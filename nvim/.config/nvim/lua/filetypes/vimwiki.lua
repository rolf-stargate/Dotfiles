vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.md",
  callback = function()
    print("task sync")
    local cmd = "task sync &"
    vim.fn.system(cmd)
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.md",
  callback = function()
    vim.cmd("setlocal updatetime=100")
  end,
})

vim.api.nvim_create_autocmd("CursorHold", {
  pattern = "*.md",
  callback = function()
    print("test")
    vim.cmd("lua require('hover').hover()")
  end
})