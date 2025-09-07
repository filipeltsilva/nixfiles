{
  pkgs,
  inputs,
  outputs,
  lib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix

    ../../../modules/home-manager

    ../../../modules/nixos/nixvim
    ../../../modules/nixos/desktop/xfce

    ../../../services/podman

    ./style.nix

    inputs.home-manager.nixosModules.home-manager
  ];

  networking.hostName = "sandbox";

  environment.systemPackages = with pkgs; [
    neovim
  ];

  home-manager = {
    backupFileExtension = lib.mkDefault "hm_backup";
    extraSpecialArgs = {inherit inputs outputs;};
    useGlobalPkgs = true;
    useUserPackages = true;
    users.filipelemos = {
      imports = [./home.nix];
      home = {
        username = "filipelemos";
        homeDirectory = "/home/filipelemos";
        stateVersion = "25.11";
      };
    };
  };

  system.stateVersion = "25.05";
}
