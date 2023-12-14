return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
    },
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-go",
        },
      }
    end,
    keys = {
      { "<leader>ltf", function() require("neotest").run.run(vim.fn.expand "%") end, desc = "Run File" },
      { "<leader>ltF", function() require("neotest").run.run(vim.loop.cwd()) end, desc = "Run All Test Files" },
      { "<leader>ltr", function() require("neotest").run.run() end, desc = "Run Nearest" },
      { "<leader>lts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
      {
        "<leader>lto",
        function() require("neotest").output.open { enter = true, auto_close = true } end,
        desc = "Show Output",
      },
      { "<leader>ltO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
      { "<leader>ltS", function() require("neotest").run.stop() end, desc = "Stop" },
    },
  },
}
