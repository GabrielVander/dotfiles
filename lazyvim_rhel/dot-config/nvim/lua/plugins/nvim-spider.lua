return {
  "chrisgrieser/nvim-spider",
  event = "VeryLazy",
  opts = {
    -- Options for the spider motion
    subword = true,                      -- Treat subwords (camelCase, snake_case) as separate words
    skipInsignificantPunctuation = true, -- Skip insignificant punctuation when moving
    customPatterns = {},                 -- Add custom word patterns
  },
  config = function(_, opts)
    require("spider").setup(opts)

    -- Set up key mappings
    -- Override default word motions with spider's smarter version
    vim.keymap.set({ "n", "x", "o" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
    vim.keymap.set({ "n", "x", "o" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
    vim.keymap.set({ "n", "x", "o" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
    vim.keymap.set({ "n", "x", "o" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })
  end,
}
