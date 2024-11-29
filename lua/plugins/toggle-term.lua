-- return {
--   "akinsho/toggleterm.nvim",
--   config = function()
--     require("toggleterm").setup({
--       open_mapping = [[<C-\>]],
--       direction = "float",
--       -- direction = "vertical",
--       float_opts = { border = "curved" },
--     })
--   end,
-- }

return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-\>]], -- Atajo para abrir el terminal
      direction = "horizontal", -- Establece el terminal en modo horizontal
      size = 20, -- Tamaño del terminal horizontal (puedes ajustar este valor)

      -- Opciones para gestionar múltiples terminales
      persist_size = true, -- Mantener el tamaño del terminal cuando se cierra y se vuelve a abrir
      persist_mode = true, -- Mantener el modo del terminal (insert) cuando se cierra
    })

    -- Puedes añadir una configuración personalizada para abrir otro terminal en horizontal
    -- Este atajo se utilizará para abrir un segundo terminal en el mismo modo
    vim.api.nvim_set_keymap(
      "n",
      "<Leader>t",
      ":lua require('toggleterm').toggle(2)<CR>",
      { noremap = true, silent = true }
    )
  end,
}
