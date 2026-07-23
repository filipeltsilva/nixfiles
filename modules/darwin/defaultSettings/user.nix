{flake, ...}: let
  cfg = import (flake + "/config.nix");
  me = cfg.me;
in {
  users.users.${me.user} = {
    description = "${me.userFullName}";
    home = "/Users/${me.user}";
  };
}
