{
  flake.modules.homeManager.dev = {
    programs.nixvim = {
      plugins.gitsigns.enable = true;
    };
  };
}
