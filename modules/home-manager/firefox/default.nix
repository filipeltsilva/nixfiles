{me, ...}: {
  flake.modules.homeManager.firefox = {
    programs.firefox = {
      enable = true;
      policies = import ./_policies.nix;

      profiles.${me.user} = {
        id = 0;
        isDefault = true;
        name = "${me.userFullName}";

        search = import ./_search-engines.nix;
        settings = import ./_profile-settings.nix;
      };
    };
  };
}
