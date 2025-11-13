{
  config,
  lib,
  me,
  ...
}: {
  flake.nixosModules = {
    virtualisation.podman = {
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

        users.users.${me.user} = {
          isNormalUser = true;
          extraGroups = ["podman"];
        };
      };
    };
  };
}
