return {
  "gcmt/wildfire.vim",
  event = "VeryLazy",
  config = function()
    -- Press ENTER to expand, BACKSPACE to shrink
    vim.g.wildfire_objects = { "i'", 'i"', "i)", "i]", "i}", "ip", "it" }
  end,
}
