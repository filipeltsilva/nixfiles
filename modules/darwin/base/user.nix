{me, ...}: {
  flake.modules.darwin.base = {
    users.users.${me.user} = {
      description = "${me.userFullName}";
      home = "/Users/${me.user}";
    };
  };
}
