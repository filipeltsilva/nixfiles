{inputs, ...}: {
  flake.modules.homeManager.dev = {pkgs, ...}: {
    imports = [inputs.nixvim.homeModules.nixvim];

    programs.nixvim = {
      enable = true;
      package = inputs.neovim-nightly-overlay.packages.${pkgs.stdenv.hostPlatform.system}.default;

      defaultEditor = true;
      editorconfig.enable = true;
      enableMan = true;

      imports = [
        ./_core
        ./_plugins
      ];

      performance = {
        byteCompileLua = {
          enable = true;
          nvimRuntime = true;
          plugins = true;
        };
        combinePlugins.enable = true;
      };

      viAlias = true;
      vimAlias = true;

      withNodeJs = true;
      withPerl = true;
    };
  };
}
