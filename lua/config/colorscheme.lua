require("cyberdream").setup({
   transparent = true, 
   italic_comments = true,
   hide_fillchar = false,
   borderless_telescope = true,
   terminal_colors = true,
   theme = {
      variant = "default",
      highlights = {
         Comment = { fg = "#696969", bg = "NONE", italic = true },
      },
      colors = {
         bg = "#000000",
         green = "#00ff00",
         magenta = "#ff00ff",
      }
   }
})

-- Add a custom keybinding to toggle the colorscheme
vim.api.nvim_set_keymap("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd("User", {
   pattern= "CyberdreamToggleMode",
   callback = function(event)
      print("Switched to " .. event.data .. " mode!")
   end
})

