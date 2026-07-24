{
  flake,
  inputs,
  ...
}: let
  cfg = import (flake + "/config.nix");
  me = cfg.me;
in {
  disabledModules = [
    inputs.home-manager.darwinModules.home-manager
  ];

  imports = [
    flake.flakeModules.defaultSettings

    flake.darwinModules.defaultSettings
    flake.darwinModules.ollama

    inputs.home-manager-darwin.darwinModules.home-manager
  ];

  home-manager = {
    backupFileExtension = "hm_backup";
    extraSpecialArgs = {inherit inputs;};
    useGlobalPkgs = true;
    useUserPackages = true;
    users.${me.user} = {
      imports = with flake.homeModules; [
        cli
        firefox
        nvf
      ];

      home.stateVersion = "26.05";
      stylix.enableReleaseChecks = false;
      targets.genericLinux.enable = false;
    };
  };

  nixpkgs.config.allowUnsupportedSystem = true;
  nixpkgs.flake.source = inputs.nixpkgs-darwin;
  nixpkgs.hostPlatform = "x86_64-darwin";

  system.stateVersion = 6;
}
