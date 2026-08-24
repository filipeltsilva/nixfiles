{flake, ...}: {
  imports =
    flake.inputs.nix-wire.lib.autoImport ./.
    ++ [
      flake.flakeModules.defaultSettings

      flake.nixosModules.defaultSettings
      flake.nixosModules.audio
    ];

  home-manager.backupFileExtension = "hm_backup";

  networking.networkmanager.enable = true;

  services.flatpak.enable = true;
}
