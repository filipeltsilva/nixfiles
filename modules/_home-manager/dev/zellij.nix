{
  flake.homeModules = {
    dev.zellij = {
      config,
      lib,
      ...
    }: {
      options.homeManager.modules.dev.zellij = {
        enable = lib.mkEnableOption "Enable Zellij";
      };

      config = lib.mkIf config.homeManager.modules.dev.zellij.enable {
        programs.zellij = {
          enable = true;
          enableFishIntegration = true;

          settings = {
            default_shell = "fish";
            pane_frames = false;
            show_release_notes = false;
          };
        };
      };
    };
  };
}
