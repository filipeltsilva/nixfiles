{
  boot = {
    kernel.sysctl = {
      "vm.swappiness" = 180;
      "vm.page-cluster" = 0;
      "vm.watermark_boost_factor" = 0;
      "vm.watermark_scale_factor" = 125;
    };

    loader = {
      efi = {
        canTouchEfiVariables = false;
        efiSysMountPoint = "/boot";
      };
      grub = {
        enable = true;
        configurationLimit = 3;
        device = "nodev";
        efiInstallAsRemovable = true;
        efiSupport = true;
        useOSProber = false;
      };

      systemd-boot.enable = false;
    };
  };
}
