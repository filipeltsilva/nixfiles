{
  programs.zsh.antidote = {
    enable = true;
    plugins = [
      "getantidote/use-omz"
      "ohmyzsh/ohmyzsh path:plugins/extract"
      "ohmyzsh/ohmyzsh path:plugins/git"
      "ohmyzsh/ohmyzsh path:plugins/tmux"
    ];
  };
}
