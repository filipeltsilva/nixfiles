{
  flake,
  pkgs,
  ...
}: let
  me = (import (flake + /users.nix)).filipelemos;
in {
  imports = [
    flake.nixosModules.clientHost

    flake.nixosModules.ollama
    flake.nixosModules.xfce

    flake.inputs.nixos-facter-modules.nixosModules.facter
    {
      config.facter.reportPath = ./facter.json;
    }

    ./disko-configuration.nix
    ./hardware-configuration.nix

    ./stylix.nix
  ];

  console.useXkbConfig = true;

  environment.systemPackages = with pkgs; [
    brightnessctl
  ];

  nixpkgs.hostPlatform = "x86_64-linux";
  security.sudo.wheelNeedsPassword = false;
  system.stateVersion = "26.05";

  users.users.${me.userName} = {
    description = "${me.userFullName}";

    extraGroups = [
      "audio"
      "input"
      "networkmanager"
      "tty"
      "video"
      "wheel"
    ];

    group = "users";
    isNormalUser = true;
    initialPassword = "12345";
  };
}
