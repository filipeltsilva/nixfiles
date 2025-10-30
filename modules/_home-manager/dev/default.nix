{
  flake.homeModules.dev = {
    imports = [
      ./cli
      ./git
      ./kitty
      ./starship
      ./tmux
      ./zsh
      ./ghostty
      ./cli
      ./zellij
      ./fish
    ];
  };
}
