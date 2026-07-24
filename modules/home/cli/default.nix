{inputs, ...}: {
  imports = inputs.nix-wire.lib.autoImport ./.;

  programs = {
    bat.enable = true;

    eza = {
      enable = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
      extraOptions = [
        "--grid"
        "--group-directories-first"
        "--icons"
      ];
      git = true;
    };

    fd.enable = true;
    ripgrep.enable = true;
  };
}
