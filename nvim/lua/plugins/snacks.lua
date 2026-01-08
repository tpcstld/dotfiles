return {
  "folke/snacks.nvim",
  opts = {
    scroll = { enabled = false },
    terminal = { enabled = false },
    indent = { enabled = false },
    picker = { enabled = false },
    --     sources = {
    --       explorer = {
    --         win = {
    --           input = {
    --             keys = {
    --               ["<esc>"] = { "", mode = "n" },
    --             },
    --           },
    --           list = {
    --             keys = {
    --               ["<esc>"] = { "", mode = "n" },
    --             },
    --           },
    --         },
    --       },
    --     },
    --   },
  },
  keys = {
    -- {
    --   "<leader>r",
    --   function()
    --     Snacks.explorer()
    --   end,
    --   desc = "File Tree (cwd)",
    -- },
    -- {
    --   "<leader>d",
    --   function()
    --     Snacks.explorer({ cwd = LazyVim.root() })
    --   end,
    --   desc = "File Tree (root)",
    -- },
  },
}
