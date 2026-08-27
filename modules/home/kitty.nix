{
  programs.kitty = {
    enable = true;

    settings = {
      confirm_os_windows_close = 0;
      cursor_shape = "block";
      draw_minimal_borders = "yes";
      remember_window_size = "yes";
      shell = "zsh";
    };

    shellIntegration.enableZshIntegration = true;
  };
}
