{
  flake.modules.homeManager.dev = {
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

      antidote = {
        enable = true;
        plugins = [
          "getantidote/use-omz"

          "ohmyzsh/ohmyzsh path:plugins/dirhistory"
          "ohmyzsh/ohmyzsh path:plugins/extract"
          "ohmyzsh/ohmyzsh path:plugins/git"
          "ohmyzsh/ohmyzsh path:plugins/gitignore"
          "ohmyzsh/ohmyzsh path:plugins/tmux"
          "ohmyzsh/ohmyzsh path:plugins/web-search"

          "hlissner/zsh-autopair"
          "MichaelAquilina/zsh-you-should-use"
        ];
      };

      shellAliases = {
        cat = "bat";
        nfc = "nix flake check";
        nfu = "nix flake update";
        nrb = "sudo nixos-rebuild switch --flake .";
        q = "exit";
      };
    };
  };
}
