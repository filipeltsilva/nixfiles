{
  programs.zellij = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      default_shell = "zsh";
      pane_frames = false;
      show_release_notes = false;
    };
  };
}
