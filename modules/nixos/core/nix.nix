{me, ...}: {
  flake.modules.nixos.core = {
    nix = {
      gc = {
        automatic = true;
        dates = "daily";
        options = "--delete-older-than 7d";
        persistent = true;
      };

      settings = {
        trusted-users = [
          "@wheel"
        ];
      };
    };
  };
}
