{flake, ...}: let
  cfg = import (flake + "config.nix");
  me = cfg.me;
in {
  services.podman = {
    enable = true;

    virtualisation = {
      containers.enable = true;

      podman = {
        enable = true;

        defaultNetwork.settings.dns_enabled = true;
        dockerCompat = true;
      };
    };

    users.users.${me.user} = {
      isNormalUser = true;
      extraGroups = ["podman"];
    };
  };
}
