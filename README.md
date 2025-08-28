# blink-ultisnips.nvim

一个 **blink.cmp ⇔ UltiSnips** 的 bridge 插件，让你在 `blink.cmp` 中无缝使用 UltiSnips。

## 功能
- LSP snippet → UltiSnips 展开
- `<Tab>` / `<S-Tab>` 在占位符之间跳转
- 完全复用现有的 UltiSnips 片段

## 安装

使用 lazy.nvim:

```lua
{
  "yourname/blink-ultisnips.nvim",
  dependencies = {
      "saghen/blink.cmp",
      "SirVer/ultisnips",
  },
}
