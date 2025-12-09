{me, ...}: {
  flake.modules.darwin.core = {
    users.users.${me.user} = {
      description = "${me.userFullName}";
      home = "/Users/${me.user}";
    };
  };
}
