{lib, ...}: {
  home = {
    username = lib.mkDefault "filipelemos";
    homeDirectory = lib.mkDefault "/home/filipelemos";
  };

  programs.home-manager.enable = lib.mkDefault true;
  home.stateVersion = lib.mkDefault "25.05";
}
