{flake, ...}: {
  imports =
    flake.inputs.nix-wire.lib.autoImport ./.
    ++ [
      flake.nixosModules.defaultSettings
    ];

  home-manager.backupFileExtension = "hm_backup";

  services.flatpak.enable = true;
}
