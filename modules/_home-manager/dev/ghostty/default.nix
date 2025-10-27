{
  config,
  lib,
  ...
}: {
  options.homeManager.modules.dev.ghostty = {
    enable = lib.mkEnableOption "Enable Ghostty";
  };

  config = lib.mkIf config.homeManager.modules.dev.ghostty.enable {
    programs.ghostty = {
      enable = true;
      enableZshIntegration = true;

      settings = {
        command = "zsh";
        confirm-close-surface = false;
        maximize = true;
      };
    };
  };
}
