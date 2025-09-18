{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      command = "zsh";
      confirm-close-surface = false;
      maximize = true;
    };
  };
}
