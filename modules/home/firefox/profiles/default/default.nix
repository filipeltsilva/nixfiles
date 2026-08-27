{flake, ...}: {
  imports = flake.inputs.nix-wire.lib.autoImport ./.;

  programs.firefox.profiles.default = {
    id = 0;
    isDefault = true;
  };
}
