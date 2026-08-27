{flake, ...}: {
  imports = flake.inputs.nix-wire.lib.autoImport ./.;

  programs.firefox = {
    enable = true;
  };

  stylix.targets.firefox.profileNames = ["default"];
}
