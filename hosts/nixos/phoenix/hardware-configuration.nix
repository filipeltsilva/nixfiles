{
  config,
  lib,
  pkgs,
  ...
}: {
  # --- Kernel Modules & Core Hardware Support ---
  boot.initrd.availableKernelModules = ["uhci_hcd" "ehci_pci" "ahci" "firewire_ohci" "usb_storage" "usbhid" "sd_mod" "sr_mod" "sdhci_pci"];
  boot.initrd.kernelModules = [];
  boot.kernelModules = ["kvm-intel" "applesmc" "coretemp"];
  boot.extraModulePackages = [];

  # --- CPU Microcode Updates (Intel Sandy Bridge) ---
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  # --- Thermal & Fan Control ---
  # Essential for preventing late 2011 models from overheating
  services.mbpfan = {
    enable = true;
    # Custom safety profiles optimized for the 13" chassis
    settings = {
      general = {
        min_fan_speed = 2000;
        max_fan_speed = 6200;
        low_temp = 63;
        high_temp = 66;
        max_temp = 86;
      };
    };
  };

  # --- Broadcom Wi-Fi BCM4331 Driver ---
  # The late 2011 13" model requires the proprietary Broadcom STA driver
  boot.extraModprobeConfig = ''
    blacklist b43
    blacklist b43legacy
    blacklist ssb
    blacklist bcma
    blacklist brcmfmac
  '';
  boot.kernelModules = ["wl"];
  hardware.b43.enable = true;

  # --- Graphics & Backlight ---
  # Intel HD Graphics 3000 optimization
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
    ];
  };

  # Fix screen brightness controls on older MacBook panels
  boot.kernelParams = ["acpi_osi=Darwin" "acpi_backlight=native"];

  # --- Input Devices (Trackpad & Keyboard) ---
  services.libinput = {
    enable = true;
    touchpad = {
      tapping = true;
      naturalScrolling = true;
      clickMethod = "clickfinger";
      disableWhileTyping = true;
    };
  };

  # --- Power Management & Battery Life ---
  powerManagement = {
    enable = true;
    cpuFreqGovernor = lib.mkDefault "schedutil";
  };
}
