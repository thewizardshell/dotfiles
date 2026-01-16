return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Configuración de LSP servers
      servers = {
        -- Deshabilitar markdownlint completamente
        marksman = {
          -- Configurar Marksman (LSP de markdown) si lo usas
          settings = {},
        },
      },
      -- Deshabilitar diagnósticos para archivos markdown
      setup = {
        marksman = function(_, opts)
          -- No hacer nada, básicamente deshabilita marksman
          return false
        end,
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        -- Deshabilitar markdownlint
        markdown = {},
      },
    },
  },
}
