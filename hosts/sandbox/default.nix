{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ../global

    ./hardware-configuration.nix

    ../../modules/nixos/nixvim
    ../../modules/nixos/xfce

    ../../users/filipelemos

    ../../home-manager/sandbox.nix
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  system.stateVersion = "25.05";
}
