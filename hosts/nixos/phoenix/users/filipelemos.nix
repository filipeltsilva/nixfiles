{flake, ...}: {
  home.stateVersion = "26.05";

  imports = with flake.homeModules; [
    cli
    firefox
    ghostty
    nvf
  ];
}
