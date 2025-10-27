{
  config,
  lib,
  ...
}: {
  imports = [
    ./aliases.nix
    ./antidote.nix
  ];

  options.homeManager.modules.dev.zsh = {
    enable = lib.mkEnableOption "Enabe zsh";
  };

  config = lib.mkIf config.homeManager.modules.dev.zsh.enabe {
    programs.zsh = {
      enable = true;

      autocd = true;
      autosuggestion.enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;

      envExtra = ''
        export ZSH_TMUX_AUTOSTART=true
        export ZSH_TMUX_AUTOSTART_ONCE=true
        export ZSH_TMUX_DEFAULT_SESSION_NAME="WORK"
      '';

      history = {
        append = true;
        expireDuplicatesFirst = true;
        findNoDups = true;
        ignoreAllDups = true;
        ignoreDups = true;
        save = 1000000;
        saveNoDups = true;
        size = 1000000;
      };
    };
  };
}
