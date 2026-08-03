{flake, ...}: {
  imports =
    flake.inputs.nix-wire.lib.autoImport ./.
    ++ [
      flake.nixosModules.defaultSettings
      flake.nixosModules.audio
    ];

  home-manager.backupFileExtension = "hm_backup";

  services.flatpak.enable = true;
}
