
if not pcall(require, "blink.cmp") then
  return
end

local ultisnips = require("blink_ultisnips")

-- 注册到 blink.cmp
require("blink.cmp").setup({
  snippet = {
    expand = function(args)
      ultisnips.expand(args)
    end,
  },
})

-- 默认键位映射 (可在用户配置里覆盖)
vim.keymap.set("i", "<Tab>", function()
  if ultisnips.jumpable_forward() then
    return ultisnips.jump_forward()
  else
    return "<Tab>"
  end
end, { expr = true, silent = true })

vim.keymap.set("i", "<S-Tab>", function()
  if ultisnips.jumpable_backward() then
    return ultisnips.jump_backward()
  else
    return "<S-Tab>"
  end
end, { expr = true, silent = true })
