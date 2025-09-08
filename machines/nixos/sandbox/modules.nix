{
  imports = [
    ./hardware-configuration.nix
    
    ../../../modules/nixos/nixvim
    ../../../modules/nixos/desktop/xfce

    ../../../services/podman

    ./style.nix
  ];
}
