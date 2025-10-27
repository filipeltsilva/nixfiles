{
  flake.nixosModules.base = {
    lib,
    pkgs,
    ...
  }: {
    options = {};
    config = {
      boot = {
        loader = {
          efi.canTouchEfiVariables = true;
          systemd-boot = {
            enable = lib.mkDefault true;
            configurationLimit = 3;
          };
        };

        kernelPackages = lib.mkDefault pkgs.linuxPackages_latest;
      };
    };
  };
}
