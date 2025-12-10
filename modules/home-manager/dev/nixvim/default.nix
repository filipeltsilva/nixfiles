{inputs, ...}: {
  flake.modules.homeManager.dev = {pkgs, ...}: {
    imports = [
      inputs.nixvim.homeModules.nixvim

      ./_plugins
    ];

    programs.nixvim = {
      enable = true;
      package = inputs.neovim-nightly-overlay.packages.${pkgs.stdenv.hostPlatform.system}.default;

      defaultEditor = true;
      editorconfig.enable = true;
      enableMan = true;
      viAlias = true;
      vimAlias = true;

      withNodeJs = true;
      withPerl = true;

      performance = {
        byteCompileLua = {
          enable = true;
          configs = true;
          nvimRuntime = true;
          plugins = true;
        };
        combinePlugins.enable = true;
      };

      plugins = {
        lualine.enable = true;
        web-devicons.enable = true;
        which-key.enable = true;
      };
    };
  };
}
