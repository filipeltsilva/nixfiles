{
  programs.nixvim = {
    plugins.lspkind = {
      enable = true;

      cmp = {
        enable = true;
        menu = {
          buffer = "[Buffer]";
          emoji = "[Emoji]";
          luasnip = "[Snippet]";
          nvim_lsp = "[LSP]";
          nvim_lua = "[API]";
          path = "[Path]";
        };
      };
    };
  };
}
