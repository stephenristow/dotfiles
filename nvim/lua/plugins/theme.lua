return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dayfox",
    },
  },

  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false,
        },
        palettes = {
          dayfox = {
            bg1 = "#F5F4EF",
            bg0 = "#F8F8F6",
            fg1 = "#2E2E2E",
            se10 = "#D8E3D2",
            comment = "#5C6558",
          },
        },
      })

      vim.cmd("colorscheme dayfox")

      vim.api.nvim_set_hl(0, "Normal", { bg = "#F5F4EF" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#F8F8F6" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "#F5F4EF" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#F5F4EF" })
    end,
  },
}
