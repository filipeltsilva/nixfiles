{
  flake.modules.homeManager.ghostty = {pkgs, ...}: {
    programs.ghostty = {
      enable = true;
      enableZshIntegration = true;

      settings = {
        command = "/usr/bin/env zsh";
        confirm-close-surface = false;
        maximize = true;
      };

      package =
        if pkgs.stdenv.isDarwin
        then null # Ghostty installed via Homebrew Cask, configured via home-manager
        else pkgs.ghostty;
    };
  };
}
