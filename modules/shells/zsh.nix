{
  programs.zsh = {
    enable = true;

    autocd = true;

    autosuggestion = {
      enable = true;
    };

    dirHashes = {
      home = "$HOME";
      doc = "$HOME/Documents/";
      dl = "$HOME/Downloads/";
      img = "$HOME/Pictures/";
      music = "$HOME/Music/";
      prj = "$HOME/Projects/";
      vid = "$HOME/Videos/";
    };

    enableCompletion = true;

    envExtra = ''
      export ZSH_TMUX_AUTOSTART=true
      export ZSH_TMUX_AUTOSTART_ONCE=true
      export ZSH_TMUX_DEFAULT_SESSION_NAME="WORKSTATION"
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

    syntaxHighlighting = {
      enable = true;
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "tmux"
      ];
    };
  };
}
