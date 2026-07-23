{
  flake,
  inputs,
  ...
}: let
  cfg = import (flake + "/config.nix");
  me = cfg.me;
in {
  imports = [
    flake.flakeModules.common

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
        ghostty
        nvf
      ];

      home.stateVersion = "26.05";
    };
  };

  nixpkgs.config.allowUnsupportedSystem = true;
  nixpkgs.flake.source = inputs.nixpkgs-darwin;
  nixpkgs.hostPlatform = "x86_64-darwin";

  stylix.enableReleaseChecks = false;
  system.stateVersion = 6;
}
