{
  imports = [
    ./base.nix

    ../modules/network/firefox.nix

    ../modules/utilities/git.nix
    ../modules/utilities/kitty.nix

    ../modules/utilities/nixvim

    ../modules/shells/zsh.nix
    ../modules/utilities/starship.nix
    ../modules/utilities/tmux.nix
  ];
}
