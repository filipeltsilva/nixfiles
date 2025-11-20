{me, ...}: {
  flake.modules.homeManager.firefox = {
    programs.firefox = {
      enable = true;

      profiles.${me.user} = {
        id = 0;
        isDefault = true;
        name = "${me.userFullName}";
      };
    };
  };
}
