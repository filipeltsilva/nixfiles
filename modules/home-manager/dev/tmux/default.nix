{pkgs, ...}: {
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

      set -g status-justify centre
      set -g status-style "bg=default"

      set -g status-left "#[fg=green,bold]#S "
      set -g status-left-length 20

      set -g status-right "#[fg=magenta]%d/%m/%Y %H:%M "

      set -g window-status-current-format "#[bg=yellow] #[fg=default,bold]#I:#W "
      set -g window-status-format "#[bg=default] #[fg=yellow]#I:#W "
    '';
  };
}
