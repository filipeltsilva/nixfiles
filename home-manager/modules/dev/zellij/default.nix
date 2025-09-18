{
  programs.zellij = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      default_shell = "fish";
      pane_frames = false;
      show_release_notes = false;
    };
  };
}
