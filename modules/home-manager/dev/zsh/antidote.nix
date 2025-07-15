{
  programs.zsh.antidote = {
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
}
