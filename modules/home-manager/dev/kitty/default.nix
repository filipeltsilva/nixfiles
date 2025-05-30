{
  programs.kitty = {
    enable = true;

    settings = {
      confirm_os_window_close = 0;
      shell = "zsh";
    };

    shellIntegration.enableZshIntegration = true;
  };
}
