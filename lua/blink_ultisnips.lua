local M = {}

-- 展开 snippet
M.expand = function(args)
  local body = args.body
  -- 进入 Insert 模式时执行 UltiSnips#Anon
  vim.schedule(function()
    vim.fn["UltiSnips#Anon"](body)
  end)
end

-- 是否可以向前跳
M.jumpable_forward = function()
  return vim.fn["UltiSnips#CanJumpForwards"]() == 1
end

-- 是否可以向后跳
M.jumpable_backward = function()
  return vim.fn["UltiSnips#CanJumpBackwards"]() == 1
end

-- 向前跳
M.jump_forward = function()
  if M.jumpable_forward() then
    vim.api.nvim_feedkeys(
      vim.api.nvim_replace_termcodes("<Plug>(ultisnips_jump_forward)", true, true, true),
      "m",
      true
    )
    return true
  end
  return false
end

-- 向后跳
M.jump_backward = function()
  if M.jumpable_backward() then
    vim.api.nvim_feedkeys(
      vim.api.nvim_replace_termcodes("<Plug>(ultisnips_jump_backward)", true, true, true),
      "m",
      true
    )
    return true
  end
  return false
end

return M
