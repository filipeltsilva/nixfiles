{
  flake.modules.homeManager.dev = {
    programs.nixvim.plugins = {
      web-devicons.enable = true;
    };
  };
}
