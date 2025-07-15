{pkgs, ...}: {
  programs.tmux.plugins = with pkgs; [
    {
      plugin = tmuxPlugins.continuum;
      extraConfig = ''
        set -g @continuum-restore "on"
        set -g @continuum-save-interval "5"
      '';
    }

    tmuxPlugins.resurrect
  ];
}
