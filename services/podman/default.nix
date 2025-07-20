{
  virtualisation = {
    containers.enable = true;

    podman = {
      enable = true;

      defaultNetwork.settings.dns_enabled = true;
      dockerCompat = true;
    };
  };

  users.users.filipelemos = {
    isNormalUser = true;
    extraGroups = [ "podman" ];
  };
}
