{
  config,
  lib,
  userName,
  ...
}: {
  options.services.podman = {
    enable = lib.mkEnableOption "Enable Podman Container Daemon";
  };

  config = lib.mkIf config.services.podman.enable {
    virtualisation = {
      containers.enable = true;

      podman = {
        enable = true;

        defaultNetwork.settings.dns_enabled = true;
        dockerCompat = true;
      };
    };

    users.users.${userName} = {
      isNormalUser = true;
      extraGroups = ["podman"];
    };
  };
}
