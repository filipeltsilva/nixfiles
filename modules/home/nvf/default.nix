{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nvf-darwin.homeManagerModules.default
    ./_plugins
  ];

  programs.nvf = {
    enable = true;

    settings.vim = {
      extraPackages = with pkgs; [
        alejandra
        deadnix
        nixd
        statix
        luajitPackages.tree-sitter-cli
      ];

      viAlias = true;
      vimAlias = true;

      theme.enable = true;

      opts = {
        cmdheight = 2;
        mouse = "a";
        shiftwidth = 2;
        tabstop = 2;
      };
    };
  };
}
