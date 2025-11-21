{
  flake.modules.homeManager.dev = {
    programs.nixvim = {
      plugins.none-ls = {
        enable = true;

        sources = {
          completion.luasnip.enable = true;

          formatting = {
            alejandra.enable = true;

            clang_format.enable = true;

            prettier = {
              enable = true;
              disableTsServerFormatter = true;
            };

            prettierd = {
              enable = true;
              disableTsServerFormatter = true;
            };

            rubocop.enable = true;

            stylua.enable = true;
          };
        };
      };
    };
  };
}
