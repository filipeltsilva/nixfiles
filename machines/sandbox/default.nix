{pkgs, ...}: {
  imports = [
    ../common
    ./hardware-configuration.nix

    ../../users/filipelemos

    ../../modules/nixos/nixvim
    ../../modules/nixos/xfce

    ../../home/common
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  home-manager.users.filipelemos = import ../../home/sandbox;

  system.stateVersion = "25.05";
}
