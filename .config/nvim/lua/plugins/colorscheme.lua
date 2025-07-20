return {
  "e-ink-colorscheme/e-ink.nvim",
  priority = 1000,
  config = function()
    require("e-ink").setup()
    vim.cmd.colorscheme("e-ink")

    -- choose light mode or dark mode
    -- vim.opt.background = "dark"
    vim.opt.background = "light"

    -- or do
    -- :set background=dark
    -- :set background=light

    -- transparent background
    local set_hl = vim.api.nvim_set_hl
    local mono = require("e-ink.palette").mono()
    set_hl(0, "Normal", { fg = mono[12], bg = "NONE" })
  end,
}
