-- if true then return {} end

return {
  "gbprod/cutlass.nvim",
  opts = {
      cut_key = "x",
      exclude = {},        -- Add operations to exclude from cutlass
      override_del = true, -- Override delete operations
    }
}
