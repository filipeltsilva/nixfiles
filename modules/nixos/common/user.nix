{me, ...}: {
  flake.nixosModules = {
    common = {
      users.users.${me.user} = {
        isNormalUser = true;
        initialPassword = "12345";
        description = "${me.userFullName}";
        extraGroups = ["wheel" "audio" "video" "tty" "networkmanager"];
        home = "/home/${me.user}";
      };
    };
  };
}
