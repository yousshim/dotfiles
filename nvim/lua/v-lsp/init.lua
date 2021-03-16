-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use

local USER = vim.fn.expand("$USER")

local sumneko_root_path = "/home/" .. USER .. "/sources/lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin/Linux/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    },
  },
  on_attach=require'completion'.on_attach
}


require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
-- require'lspconfig'.svelte.setup{on_attach=require'completion'.on_attach}

