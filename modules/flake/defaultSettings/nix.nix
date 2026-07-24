{flake, ...}: let
  cfg = import (flake + "/config.nix");
  me = cfg.me;
in {
  nix = {
    settings = {
      connect-timeout = 15;
      cores = 0;
      download-buffer-size = "104857600";
      http-connections = 25;
      stalled-download-timeout = 30;

      substituters = [
        "https://cache.nixos.org"
        "https://nix-community.cachix.org"
      ];

      trusted-public-keys = [
        "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      ];

      trusted-users = [
        "${me.user}"
        "root"
      ];
    };

    optimise.automatic = true;
  };
}
