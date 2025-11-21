{
  flake.modules.homeManager.dev = {
    programs.nixvim = {
      plugins.indent-blankline = {
        enable = true;

        settings = {
          scope = {
            priority = 500;
            show_exact_scope = true;
          };
        };
      };
    };
  };
}
