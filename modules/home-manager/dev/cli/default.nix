{
  programs = {
    bat.enable = true;
    eza = {
      enable = true;
      enableZshIntegration = true;
      extraOptions = [
        "--grid"
        "--group-directories-first"
        "--icons"
      ];
    };
  };
}
