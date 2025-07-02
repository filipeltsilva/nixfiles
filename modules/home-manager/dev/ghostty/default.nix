{
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    enableZshIntegration = true;

    settings = {
      command = "zsh";
      confirm-close-surface = false;
      maximize = true;
      theme = "Cobalt2";
    };
  };
}
