require'nvim-treesitter.configs'.setup {
  --add langs
  ensure_installed = { "vim", "html", "bash", "c", "cpp", "javascript", "json", "lua", "python", "typescript", "tsx", "css", "rust", "markdown", "markdown_inline", "diff" },

  highlight = { enable = true },
  indent = { enable = true},

  --colorful
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_line = nil,
  }
}
