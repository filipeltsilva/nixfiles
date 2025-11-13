{
  flake.homeModules = {
    dev.cli = {
      config,
      lib,
      ...
    }: {
      options.homeManager.modules.dev.cli = {
        enable = lib.mkEnableOption "Enable CLI tools";
      };

      config = lib.mkIf config.homeManager.modules.dev.cli.enable {
        programs.bat.enable = true;
        # programs.eza = {
        #   enable = true;
        #   enableFishIntegration = true;
        #   enableZshIntegration = true;
        #   extraOptions = [
        #     "--grid"
        #     "--group-directories-first"
        #     "--icons"
        #   ];
        #   git = true;
        # };
      };
    };
  };
}
