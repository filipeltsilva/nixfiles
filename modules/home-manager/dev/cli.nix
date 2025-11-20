{
  flake.modules.homeManager.dev = {
    programs.bat.enable = true;

    programs.eza = {
      enable = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
      extraOptions = [
        "--grid"
        "--group-directories-first"
        "--icons"
      ];
      git = true;
    };
  };
}
