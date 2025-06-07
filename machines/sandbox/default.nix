{
  pkgs,
  ...
}: {
  imports = [
    ../global

    ./hardware-configuration.nix

    ../../modules/nixos/nixvim
    ../../modules/nixos/xfce

    ../../users/filipelemos
    
    ../../home/global
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  home-manager.users.filipelemos = import ../../home/sandbox;

  system.stateVersion = "25.05";
}
