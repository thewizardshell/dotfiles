return {
  -- Instala el plugin de Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato", -- Nota: se escribe "flavour" con 'u' en la config de catppuccin
    },
  },

  -- Configura LazyVim para que use ese tema
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin", -- LazyVim se encarga de aplicar el sabor definido arriba
    },
  },
}
