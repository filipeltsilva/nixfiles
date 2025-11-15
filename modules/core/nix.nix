{
  flake.modules.nixos.core_settings = {
    nix = {
      settings = {
        auto-optimise-store = true;
        download-buffer-size = "524288000";
        experimental-features = ["nix-command" "flakes"];
        substituters = [
          "https://cache.nixos.org"
          "https://nix-community.cachix.org"
        ];
        trusted-public-keys = [
          "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        ];
        trusted-users = [
          "root"
          "@wheel"
        ];
      };

      gc = {
        automatic = true;
        dates = "daily";
        options = "--delete-older-than 7d";
        persistent = true;
      };

      optimise.automatic = true;
    };
  };
}
