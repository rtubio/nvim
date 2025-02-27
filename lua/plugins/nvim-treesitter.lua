return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = { ensure_installed = { "terraform", "hcl" } },
    config = function () 
    local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "javascript", "svelte", "python", "terraform", "html", "json", "yaml" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
