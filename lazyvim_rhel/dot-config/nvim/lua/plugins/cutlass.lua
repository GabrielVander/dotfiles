return {
  "gbprod/cutlass.nvim",
  event = "VeryLazy",
  config = function()
    require("cutlass").setup({
      -- Which operations should not override the default register
      cut_key = "x",

      exclude = {},        -- Add operations to exclude from cutlass
      -- Override register configuration
      override_del = true, -- Override delete operations
      -- Registers configuration
      registers = {
        select = "_", -- Black hole register for select
        delete = "_", -- Black hole register for delete
        change = "_", -- Black hole register for change
      },
    })

    -- Optional: Add a mapping for black hole deletion (true delete without affecting registers)
    vim.keymap.set({ "n", "x" }, "d", '"_d', { noremap = true, desc = "Delete to black hole" })
    vim.keymap.set("n", "D", '"_D', { noremap = true, desc = "Delete to EOL (black hole)" })
    vim.keymap.set("n", "c", '"_c', { noremap = true, desc = "Change to black hole" })
    vim.keymap.set("n", "C", '"_C', { noremap = true, desc = "Change to EOL (black hole)" })

    -- Visual mode paste without yanking (CRITICAL for preserving yank register)
    vim.keymap.set("x", "p", [["_dp]])
    vim.keymap.set("x", "P", [["_dP]])
  end,
}
