{
  flake.modules.homeManager.dev = {
    programs.nixvim = {
      plugins.luasnip = {
        enable = true;

        settings.enable_autosnippets = true;
      };
    };
  };
}
