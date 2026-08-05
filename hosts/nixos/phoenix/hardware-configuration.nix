# Complete hardware and management configuration for Late 2011 MacBook Pro (MacBookPro8,1)
# Note: File systems and swap are managed externally.
{
  config,
  lib,
  pkgs,
  # modulesPath,
  ...
}: {
  # imports = [
  #   (modulesPath + "/installer/scan/not-detected.nix")
  # ];

  # =========================================================================
  # 1. Boot Parameters & Core Hardware Modules
  # =========================================================================
  boot = {
    # Keep F1-F12 keys with fn
    extraModprobeConfig = ''
      options hid_apple fnmode=2
    '';

    extraModulePackages = [
      config.boot.kernelPackages.broadcom_sta
    ];

    initrd = {
      availableKernelModules = [
        "ehci_pci" # USB 2.0 Controller
        "ahci" # SATA/SSD Controller
        "firewire_ohci" # FireWire 800 port
        "usbhid" # Built-in Keyboard and Trackpad
        "usb_storage" # USB installation media
        "sd_mod" # Storage disk support
        "sr_mod" # Internal SuperDrive CD/DVD reader
      ];

      kernelModules = [];
    };

    kernelModules = [
      "kvm-intel" # Intel Virtualization
      "wl" # Broadcom proprietary Wi-Fi module
      "applesmc" # Apple System Management Controller (Fans, Backlight, Keyboard)
      "apple_bl" # Screen backlight control interface
    ];
  };

  # =========================================================================
  # 2. System Architecture, Firmware & Networking
  # =========================================================================
  hardware = {
    # Enable hardware permissions for users to adjust keyboard/screen brightness directly
    # brightnessctl.enable = true;

    # Enable proprietary firmware blobs required for the Wi-Fi card and Intel CPU
    cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableAllFirmware;
    enableRedistributableFirmware = lib.mkDefault true;
  };

  networking.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";

  # =========================================================================
  # 3. MacBook Hardware & Thermal Management Daemons
  # =========================================================================
  services = {
    # Enable ACPID for handling legacy Mac lid close events and power button actions
    acpid.enable = true;

    # Warn unused data blocks in SSD to cleanup and increase its service life
    fstrim.enable = true;

    # Macbook Pro touchpad
    libinput = {
      enable = true;
      touchpad = {
        clickMethod = "clickfinger";
        disableWhileTyping = true;
        naturalScrolling = false;
        tapping = true;
      };
    };

    # Enable MacBook fan daemon to prevent overheating and control curves
    mbpfan = {
      enable = true;
      settings.mbpfan = {
        min_fan_speed = 2000;
        max_fan_speed = 6200;
        low_temp = 63;
        high_temp = 66;
        max_temp = 86;
      };
    };

    # Enable power-profiles-daemon / thermald for modern Intel CPU thermal management
    thermald.enable = true;

    # Enable UPower for battery tracking and ambient light level reading
    upower.enable = true;

    # Keyboard setup
    xserver.xkb = {
      layout = "us";
      model = "apple";
      variant = "intl";
    };
  };
}
