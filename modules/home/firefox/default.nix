{flake, ...}: {
  imports = flake.inputs.nix-wire.lib.autoImport ./.;

  programs.firefox = {
    enable = true;
  };
}
