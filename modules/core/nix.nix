{me, ...}: {
  flake.modules.generic.core = {
    nix = {
      settings = {
        connect-timeout = 15;
        cores = 0;
        download-buffer-size = "104857600";
        experimental-features = ["nix-command" "flakes"];
        http-connections = 25;
        max-jobs = "auto";
        stalled-download-timeout = 30;

        substituters = [
          "https://cache.nixos.org"
          "https://cache.ngi0.nixos.org/"
          "https://nix-community.cachix.org"
        ];

        trusted-public-keys = [
          "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
          "cache.ngi0.nixos.org-1:KqH5CBLNSyX184S98rwAKyKVsgrpG3qj3pqIUW1V9z0="
          "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        ];

        trusted-users = [
          "${me.user}"
          "root"
        ];
      };

      optimise.automatic = true;
    };
  };
}
