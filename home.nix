{ config, pkgs, ... }:

{
  home.username = "filipelemos";
  home.homeDirectory = "/home/filipelemos";

  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = true;
    };
  };

  imports = [
    ./modules/kitty
    ./modules/zellij
    ./modules/vscode
  ];
}
