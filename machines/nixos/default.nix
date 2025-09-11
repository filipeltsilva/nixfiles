{
  lib,
  pkgs,
  user,
  userFullName,
  ...
}: {
  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        enable = lib.mkDefault true;
        configurationLimit = 3;
      };
    };

    kernelPackages = lib.mkDefault pkgs.linuxPackages_latest;
  };

  documentation.man.generateCaches = true;

  environment.systemPackages = with pkgs; [
    nix-prefetch-github
  ];

  i18n = {
    defaultLocale = "en_US.UTF-8";

    extraLocales = [
      "pt_BR.UTF-8/UTF-8"
    ];

    extraLocaleSettings = {
      LANGUAGE = "en_US.UTF-8";
      LC_ALL = "pt_BR.UTF-8";
      # LC_NUMERIC = "pt_BR.UTF-8";
      # LC_TIME = "pt_BR.UTF-8";
      # LC_COLLATE = "pt_BR.UTF-8";
      # LC_MONETARY = "pt_BR.UTF-8";
      # LC_MESSAGES = "pt_BR.UTF-8";
      # LC_PAPER = "pt_BR.UTF-8";
      # LC_NAME = "pt_BR.UTF-8";
      # LC_ADDRESS = "pt_BR.UTF-8";
      # LC_TELEPHONE = "pt_BR.UTF-8";
      # LC_MEASUREMENT = "pt_BR.UTF-8";
      # LC_IDENTIFICATION = "pt_BR.UTF-8";
    };
  };

  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = ["nix-command" "flakes"];
      substituters = [
        "https://cache.nixos.org"
        "https://nix-community.cachix.org"
      ];
      trusted-public-keys = [
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      ];
      trusted-users = [
        "root"
        "@wheel"
      ];
    };

    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 7d";
      persistent = true;
    };

    optimise.automatic = true;
  };

  time.timeZone = "America/Sao_Paulo";

  users.users.${user} = {
    isNormalUser = true;
    initialPassword = "12345";
    description = "${userFullName}";
    extraGroups = ["wheel" "audio" "video" "tty" "networkmanager"];
    home = "/home/${user}";
  };
}
