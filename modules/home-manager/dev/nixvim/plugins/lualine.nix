{
  flake.modules.homeManager.dev = {
    programs.nixvim = {
      plugins.lualine = {
        enable = true;
      };
    };
  };
}
