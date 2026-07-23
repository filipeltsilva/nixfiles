{lib, ...}: {
  home-manager.backupFileExtension = lib.mkForce "hm_backup";
}
