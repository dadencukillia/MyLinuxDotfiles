# Highlight Settings

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"rust", "go", "cpp", "c", "cmake", "make"},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
