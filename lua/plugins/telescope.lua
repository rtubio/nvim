return {
	"nvim-telescope/telescope.nvim",
  dependencies = {
    { 
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
    },
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

		-- ######### keybindings
		vim.keymap.set("n", "<C-f>", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set(
      "n",
      "<C-g>",
      "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
      { desc = "Live Grep" }
    )
		-- first setup telescope
    telescope.setup({
    })

    -- then load the extension
    telescope.load_extension("live_grep_args")
  end
}
