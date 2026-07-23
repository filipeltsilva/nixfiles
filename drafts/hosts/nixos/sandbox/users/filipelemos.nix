{flake, ...}: {
  home.stateVersion = "25.11";

  imports = with flake.homeModules; [
    cli
    firefox
    ghostty
    nvf
  ];
}
