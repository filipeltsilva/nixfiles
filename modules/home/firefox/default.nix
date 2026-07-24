{inputs, ...}: {
  imports = inputs.nix-wire.lib.autoImport ./.;

  programs.firefox = {
    enable = true;
  };
}
