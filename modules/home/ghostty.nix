{pkgs, ...}: {
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      command = "${pkgs.zsh}/bin/zsh";
      confirm-close-surface = false;
      maximize = true;
    };
  };
}
