{
  config,
  lib,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.nixosModules.nixvim

    ./keymaps.nix
    ./options.nix

    ./plugins
  ];

  options.modules.dev.nixvim = {
    enable = lib.mkEnableOption "Enable Nixvim Editor";
  };

  config = lib.mkIf config.modules.dev.nixvim.enable {
    programs.nixvim = {
      enable = true;

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
    };
  };
}
