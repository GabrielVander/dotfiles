-- if true then return {} end

return {
  "gcmt/wildfire.vim",
  event = "VeryLazy",
  config = function()
    -- Press ENTER to expand, BACKSPACE to shrink
    vim.g.wildfire_objects = { "iw", "i'", "a'", 'i"', 'a"', "i)", "a)", "i]", "a]", "i}", "a}", "ip", "ap", }
  end,
}
