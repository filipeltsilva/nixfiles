{inputs, ...}: {
  flake.modules.homeManager.dev = {pkgs, ...}: {
    imports = [
      inputs.nvf.homeManagerModules.default
      ./_plugins
    ];

    programs.nvf = {
      enable = true;

      settings.vim = {
        extraPackages = with pkgs; [
          alejandra
          nixd
          ripgrep
          tree-sitter
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
  };
}
