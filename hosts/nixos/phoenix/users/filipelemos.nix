{flake, ...}: let
  me = (import (flake + /users.nix)).filipelemos;
in {
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
