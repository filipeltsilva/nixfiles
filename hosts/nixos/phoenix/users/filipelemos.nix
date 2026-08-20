{flake, ...}: let
  me = (import (flake + /users.nix)).filipelemos;
in {
  imports = [
    flake.homeModules.cli
    flake.homeModules.firefox
    flake.homeModules.ghostty
    flake.homeModules.nvf
  ];

  home.stateVersion = "26.05";

  programs.git = {
    settings = {
      user = {
        email = "${me.userEmail}";
        name = "${me.userFullName}";
      };
    };
  };
}
