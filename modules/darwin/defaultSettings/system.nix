{flake, ...}: let
  cfg = import (flake + "/config.nix");
  me = cfg.me;
in {
  system = {
    defaults.CustomUserPreferences = {
      finder = {
        _FxSortFoldersFirst = true;
        AppleShowAllExtensions = true;
        FxEnableExtensionChangeWarning = false;
        FxPreferredViewStyle = "icnv"; # Icons view in Finder
        FxRemoveOldTrashItems = true;
        NewWindowTarget = "Home";
        QuitMenuItem = true;
        ShowExternalHardDrivesOnDesktop = false;
        ShowPathbar = true;
        ShowRemovableMediaOnDesktop = false;
        ShowStatusBar = true;
      };

      dock = {
        autohide = true;
        magnification = true;
        mru-spaces = false;

        persistent-apps = [
          "/system/applications/app store.app"
          "/system/applications/system settings.app"
          "/system/applications/calendar.app"
          "/system/applications/notes.app"
          "/system/applications/maps.app"
          "/system/applications/music.app"
          "/system/applications/chess.app"
          "/Applications/Firefox.app"
          "/applications/safari.app"
          "/applications/claude.app"
          "/applications/ghostty.app"
          "/applications/telegram.app"
          "/applications/whatsapp.app"
          "/applications/windows app.app"
        ];

        show-recents = false;
        tilesize = 40;
      };

      loginwindow = {
        GuestEnabled = false;
      };

      NSGlobalDomain = {
        AppleICUForce24HourTime = true;
        AppleInterfaceStyle = "Dark";
        AppleMeasuremenmtUnits = "Centimeters";
        AppleMetricUnits = 1;
        AppleShowScrollbars = "Automatic";
        AppleTemperatureUnit = "Celsius";
        NSDocumentSaveNewDocumentsToCloud = false;
      };

      screencapture = {
        location = "~/Pictures/Screenshots";
        type = "jpg";
      };

      trackpad = {
        ActuationStrength = 0;
        Clicking = true;
        TrackpadPinch = true; # Two-finger pinch to zoom-in and zoom-out
        TrackpadRightClick = true;
        TrackpadThreeFingerDrag = true; # Drag windows with three-finger
        TrackpadTwoFingerDoubleTapGesture = true; # Smart zoom
      };
    };

    primaryUser = "${me.user}";
  };
}
