{
  flake.homeModules.network.firefox = {
    config,
    lib,
    ...
  }: {
    options.homeManager.modules.network.firefox = {
      enable = lib.mkEnableOption "Enable Mozilla Firefox Browser";
    };

    config = lib.mkIf config.homeManager.modules.network.firefox.enable {
      programs.firefox = {
        enable = true;

        policies = import ./policies.nix;

        profiles.filipelemos = {
          id = 0;
          isDefault = true;
          name = "Filipe Lemos";

          search = import ./search_engines.nix;
          settings = import ./profile_settings.nix;
        };
      };
    };
  };
}
