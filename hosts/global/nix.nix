{
  config,
  lib,
  pkgs,
  ...
}: {
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = ["nix-command" "flakes"];
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

    optimise = {
      automatic = true;
      #dates = "daily";
    };
  };

  nixpkgs = {
    config.allowUnfree = true;
  };
}
