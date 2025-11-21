{
  flake.modules.homeManager.dev = {
    programs.nixvim = {
      plugins.treesitter-textobjects = {
        enable = true;
      };
    };
  };
}
