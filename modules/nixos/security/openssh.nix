{
  flake.nixosModules = {
    security.openssh = {
      services.openssh = {
        enable = true;
      };
    };
  };
}
