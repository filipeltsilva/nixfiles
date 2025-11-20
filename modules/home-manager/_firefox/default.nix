{
  flake.modules.home-manager.firefox = {
    programs.firefox = {
      enable = true;

      profiles.filipelemos = {
        id = 0;
        isDefault = true;
        name = "Filipe Lemos";

        search = import ./search_engines.nix;
        settings = import ./profile_settings.nix;
      };
    };
  };
}
