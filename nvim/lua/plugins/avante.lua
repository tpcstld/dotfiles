return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false,
  opts = {
    provider = "claude",
    mappings = {
      ask = "<leader>va",
      new_ask = "<leader>vn",
      zen_mode = "<leader>vz",
      edit = "<leader>ve",
      refresh = "<leader>vr",
      focus = "<leader>vf",
      stop = "<leader>vS",
      history = "<leader>vh",
      toggle = {
        default = "<leader>vt",
        debug = "<leader>vd",
        selection = "<leader>vC",
        suggestion = "<leader>vs",
        repomap = "<leader>vR",
      },
    },
  },
  build = "make",
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = { insert_mode = true },
          use_absolute_path = true,
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
