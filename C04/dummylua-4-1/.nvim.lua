require("lspconfig").clangd.setup({
  cmd = {
    "clangd",
    "--query-driver=*arm-none-eabi*",
    -- NOTE：使用如下绝对路径时反而无效
    -- "--query-driver=${path_to_compiler}\\gcc-arm-none-eabi\\12.2.rel1\\bin\\arm-none-eabi*",
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
})
