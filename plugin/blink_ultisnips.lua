if not pcall(require, "blink.cmp") then
  return
end

local ultisnips = require("blink_ultisnips")

require("blink.cmp").setup({
  snippet = {
    expand = function(args)
      ultisnips.expand(args)
    end,
  },
})

-- -- Tab / S-Tab 做跳转
-- vim.keymap.set("i", "<Tab>", function()
--   if ultisnips.jumpable_forward() then
--     return vim.api.nvim_replace_termcodes("<Plug>(ultisnips_jump_forward)", true, true, true)
--   end
--   return "<Tab>"
-- end, { expr = true, silent = true })

-- vim.keymap.set("i", "<S-Tab>", function()
--   if ultisnips.jumpable_backward() then
--     return vim.api.nvim_replace_termcodes("<Plug>(ultisnips_jump_backward)", true, true, true)
--   end
--   return "<S-Tab>"
-- end, { expr = true, silent = true })
