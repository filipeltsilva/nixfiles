{pkgs, ...}: {
  programs.kitty = {
    enable = true;

    shellIntegration.enableZshIntegration = true;
    #
    # settings = {
    #   command = "${pkgs.zsh}/bin/zsh";
    #   confirm-close-surface = false;
    #   maximize = true;
    # };
    settings = {
      confirm_os_windows_close = 0;
      cursor_shape = "block";
      draw_minimal_borders = "yes";
      remember_window_size = "yes";
      shell = "zsh";
    };
  };
}
