{
  programs.firefox = {
    enable = true;

    policies = import ./policies.nix;

    profiles = {
      default = {
        id = 0;
        isDefault = true;
        name = "Default";

        search = import ./search_engines.nix;
        settings = import ./profile_settings.nix;
      };
    };
  };
}
