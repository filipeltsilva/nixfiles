{flake, ...}: {
  imports = flake.inputs.nix-wire.lib.autoImport ./.;

  programs = {
    bat.enable = true;
    btop.enable = true;

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

    fastfetch.enable = true;
    fd.enable = true;
    ripgrep.enable = true;
  };
}
