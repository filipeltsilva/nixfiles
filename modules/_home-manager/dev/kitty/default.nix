{
  config,
  lib,
  ...
}: {
  options.homeManager.modules.dev.kitty = {
    enable = lib.mkEnableOption "Enabling Kitty";
  };

  config = lib.mkIf config.homeManager.modules.dev.kitty.enable {
    programs.kitty = {
      enable = true;

      settings = {
        confirm_os_window_close = 0;
        shell = "fish";
      };

      shellIntegration.enableFishIntegration = true;
    };
  };
}
