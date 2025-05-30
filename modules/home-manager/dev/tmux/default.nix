{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    
    disableConfirmationPrompt = true;
    escapeTime = 0;
    focusEvents = true;
    mouse = true;
    shortcut = "Space";
    shell = "${pkgs.zsh}/bin/zsh";
    terminal = "tmux-256color";

    extraConfig = ''
      bind \\ split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
    '';
  };
}
