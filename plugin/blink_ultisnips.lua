
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

