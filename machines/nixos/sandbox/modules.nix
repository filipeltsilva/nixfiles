{
  imports = [
    ./hardware-configuration.nix

    ../../../modules/home-manager

    ../../../modules/nixos/nixvim
    ../../../modules/nixos/desktop/xfce

    ../../../services/podman

    ./style.nix
  ];
}
