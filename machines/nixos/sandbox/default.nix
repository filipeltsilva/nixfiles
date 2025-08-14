{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix

    ../../../users/filipelemos

    ../../../modules/home-manager

    ../../../modules/nixos/nixvim
    ../../../modules/nixos/desktop/xfce

    ../../../services/podman

    ./style.nix
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  home-manager.users.filipelemos = import ./home.nix;

  system.stateVersion = "25.05";
}
