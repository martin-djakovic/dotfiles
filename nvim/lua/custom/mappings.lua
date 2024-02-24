local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at current line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Continue debugger",
    },
  }
}

return M
