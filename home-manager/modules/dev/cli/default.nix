{
  programs = {
    bat.enable = true;
    eza = {
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
