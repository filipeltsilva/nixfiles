{
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
  };
}
