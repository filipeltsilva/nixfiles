{
  flake.modules.homeManager.dev = {
    programs.nixvim = {
      plugins.which-key = {
        enable = true;
        settings = {
          delay = 200;
        };
      };
    };
  };
}
